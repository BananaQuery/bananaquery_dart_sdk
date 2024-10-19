import 'package:banana_query_core/factories/food_factory.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_database/items/food_item_repo.dart';
import 'package:cbl/cbl.dart';

class FoodItemCbRepo extends FoodItemRepo {
  FoodItemCbRepo({required database}) : _database = database;

  static final String _collectionName = 'BQ_FoodItems';
  final Database _database;

  @override
  Future<bool> createFoodItem(NutritionalEntity foodItem) async {
    if (foodItem.id.isEmpty) {
      throw ArgumentError(
          'Food item must have a database id and a unique id ("uid") to be valid');
    }
    final collection = await _database.createCollection(_collectionName);
    final mutableDocument =
        MutableDocument.withId(foodItem.id, foodItem.toJson());
    return collection.saveDocument(mutableDocument);
  }

  @override
  Future<void> createFoodItems(List<NutritionalEntity> foodItem) async {
    final collection = await _database.createCollection(_collectionName);

    foodItem.map((e) => e.toJson()).toList().forEach((element) async {
      final mutableDocument = MutableDocument(element);
      await collection.saveDocument(mutableDocument);
      print(mutableDocument.id);
    });
  }

  @override
  Future<bool> deleteFoodItemByID(String itemId) async {
    var collection = await _database.collection(_collectionName);
    collection = _assertCollectionExists(collection);

    var foodItem = await collection.document(itemId);

    if (foodItem == null) {
      throw Exception('Database with id $itemId does not exist');
    }

    return collection.deleteDocument(foodItem);
  }

  @override
  Future<NutritionalEntity> getFoodItem(String itemId) async {
    final collection = await _database.createCollection(_collectionName);

    final query = QueryBuilder()
        .select(SelectResult.all())
        .from(DataSource.collection(collection))
        .where(Expression.property('id').equalTo(Expression.string(itemId)));

    final resultSet = await query.execute();
    final rows = await resultSet.allResults();
    return FoodFactory.standard().fromJson(
        rows.first.toPlainMap()[_collectionName] as Map<String, dynamic>);
  }

  @override
  Future<List<NutritionalEntity>> getFoodItems() async {
    final query = await _database.createQuery('''
        SELECT * FROM $_collectionName
      ''');

    // Run the query.
    final result = await query.execute();
    final rows = await result.allResults();
    return rows
        .map((e) => FoodFactory.standard()
            .fromJson(e.toPlainMap()[_collectionName] as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<NutritionalEntity>> searchFoodItems(String searchQuery) async {
    final collection = await _database.createCollection(_collectionName);
    final query = QueryBuilder()
        .select(SelectResult.all())
        .from(DataSource.collection(collection))
        .where(FullTextFunction.match(
            indexName: 'nameDescriptionFTSIndex', query: searchQuery));

    final resultSet = await query.execute();
    final rows = await resultSet.allResults();

    for (var row in rows) {
      print(row.toPlainMap());
    }

    return rows
        .map((e) => FoodFactory.standard()
            .fromJson(e.toPlainMap()[_collectionName] as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<bool> updateFoodItem(NutritionalEntity foodItem) async {
    var collection = await _database.collection(_collectionName);
    collection = _assertCollectionExists(collection);
    return collection.saveDocument(_foodMutableDoc(foodItem));
  }

  @override
  Future<void> updateFoodItems(List<NutritionalEntity> items) async {
    for (var item in items) {
      await updateFoodItem(item);
    }
  }

  MutableDocument _foodMutableDoc(NutritionalEntity item) {
    if (item.id.isEmpty) {
      throw ArgumentError(
          'Food item must have a database id and a unique id ("uid") to be valid');
    }
    return MutableDocument.withId(item.id, item.toJson());
  }

  Collection _assertCollectionExists(Collection? collection) {
    if (collection == null) {
      throw Exception(
          'Database has not been initialized. Run BananaQueryCoachBase.initialize() before using this repo');
    }
    return collection;
  }
}
