import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_database/food/food_database_repo.dart';
import 'package:cbl/cbl.dart';

class FoodDatabaseCBRepo extends FoodDatabaseRepo {

  FoodDatabaseCBRepo({ required database }) : _database = database;

  static final String _collectionName = 'BQ_FoodDatabases';
  final Database _database;

  @override
  Future<void> createFoodDatabase(FoodDatabaseInfo foodDatabaseInfo) async {
    var collection = await _database.collection(_collectionName);
    collection = _assertCollectionExists(collection);
    final mutableDocument = MutableDocument.withId(foodDatabaseInfo.id, foodDatabaseInfo.toJson());
    await collection.saveDocument(mutableDocument);
    print(mutableDocument.id);
  }

  @override
  Future<bool> deleteFoodDatabaseByID(String databaseId) async {
    var collection = await _database.collection(_collectionName);
    collection = _assertCollectionExists(collection);

    var database = await collection.document(databaseId);

    if (database == null) {
      throw Exception('Database with id $databaseId does not exist');
    }

    return collection.deleteDocument(database);
  }

  @override
  Future<FoodDatabaseInfo> getFoodDatabase(String databaseId) async {
    final collection = await _database.createCollection(_collectionName);

    final query = QueryBuilder()
        .select(SelectResult.all())
        .from(DataSource.collection(collection))
        .where(Expression.property('id').equalTo(Expression.string(databaseId)));

    final resultSet = await query.execute();
    final rows = await resultSet.allResults();

    if (rows.isEmpty) {
      throw Exception('Database with id $databaseId does not exist');
    }

    return FoodDatabaseInfo.fromJson(rows.first.toPlainMap()[_collectionName] as Map<String, dynamic>);
  }

  @override
  Future<List<FoodDatabaseInfo>> getFoodDatabases() async {
    final collection = await _database.createCollection(_collectionName);
    final query = QueryBuilder()
        .select(SelectResult.all())
        .from(DataSource.collection(collection));

    final resultSet = await query.execute();
    final rows = await resultSet.allResults();

    return rows.map((e) => FoodDatabaseInfo.fromJson(e.toPlainMap()[_collectionName] as Map<String, dynamic>)).toList();
  }

  @override
  Future<List<FoodDatabaseInfo>> searchFoodDatabases(String searchQuery ) async {
    final collection = await _database.createCollection(_collectionName);
    final query = QueryBuilder()
        .select(SelectResult.all())
        .from(DataSource.collection(collection))
        .where(FullTextFunction.match(indexName: 'nameDescriptionFTSIndex', query: searchQuery));


    final resultSet = await query.execute();
    final rows = await resultSet.allResults();

    for (var row in rows) {
      print(row.toPlainMap());
    }

    return rows.map((e) => FoodDatabaseInfo.fromJson(e.toPlainMap()[_collectionName] as Map<String, dynamic>)).toList();
  }

  @override
  Future<void> updateFoodDatabase(FoodDatabaseInfo foodDatabaseInfo) async {
    var collection = await _database.collection(_collectionName);
    collection = _assertCollectionExists(collection);
    collection.saveDocument(_foodDatabaseMutableDoc(foodDatabaseInfo));
  }

  MutableDocument _foodDatabaseMutableDoc(FoodDatabaseInfo collection) {
    return MutableDocument.withId(collection.id, collection.toJson());
  }

  Collection _assertCollectionExists(Collection? collection) {
    if (collection == null) {
      throw Exception('Database has not been initialized. Run BananaQueryCoachBase.initialize() before using this repo');
    }
    return collection;
  }
}