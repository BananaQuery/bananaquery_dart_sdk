import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_database/food/food_database_repo.dart';
import 'package:banana_query_drift/database/database.dart';
import 'package:drift/drift.dart';

class FoodDatabaseDriftRepo extends FoodDatabaseRepo {
  FoodDatabaseDriftRepo({required this.database});

  final BananaQueryDriftDatabase database;

  @override
  Future<void> createFoodDatabase(FoodDatabaseInfo foodDatabaseInfo) async {
    await database.into(database.foodDatabases).insert(
      FoodDatabasesCompanion.insert(
        id: foodDatabaseInfo.id,
        name: foodDatabaseInfo.name,
        description: Value(foodDatabaseInfo.description),
        version: foodDatabaseInfo.version.toString(),
        language: foodDatabaseInfo.language,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
      mode: InsertMode.insertOrReplace,
    );
  }

  @override
  Future<bool> deleteFoodDatabaseByID(String databaseId) async {
    final deletedRows = await (database.delete(database.foodDatabases)
          ..where((tbl) => tbl.id.equals(databaseId)))
        .go();
    
    if (deletedRows == 0) {
      throw Exception('Database with id $databaseId does not exist');
    }
    
    return deletedRows > 0;
  }

  @override
  Future<FoodDatabaseInfo> getFoodDatabase(String databaseId) async {
    final query = database.select(database.foodDatabases)
      ..where((tbl) => tbl.id.equals(databaseId));
    
    final result = await query.getSingleOrNull();
    
    if (result == null) {
      throw Exception('Database with id $databaseId does not exist');
    }
    
    return FoodDatabaseInfo(
      id: result.id,
      name: result.name,
      description: result.description,
      version: double.parse(result.version),
      language: result.language,
      itemCount: null,
      source: '',
      url: null,
      uri: null,
    );
  }

  @override
  Future<List<FoodDatabaseInfo>> getFoodDatabases() async {
    final results = await database.select(database.foodDatabases).get();
    
    return results.map((row) => FoodDatabaseInfo(
      id: row.id,
      name: row.name,
      description: row.description,
      version: double.parse(row.version),
      language: row.language,
      itemCount: null,
      source: '',
      url: null,
      uri: null,
    )).toList();
  }

  @override
  Future<List<FoodDatabaseInfo>> searchFoodDatabases(String searchQuery) async {
    // Use FTS for full-text search
    final results = await database.customSelect(
      '''
      SELECT fd.* FROM food_databases fd
      JOIN food_databases_fts fts ON fd.rowid = fts.rowid
      WHERE food_databases_fts MATCH ?
      ORDER BY rank
      ''',
      variables: [Variable.withString(searchQuery)],
      readsFrom: {database.foodDatabases},
    ).get();
    
    return results.map((row) => FoodDatabaseInfo(
      id: row.read('id') as String,
      name: row.read('name') as String,
      description: row.read('description') as String?,
      version: double.parse(row.read('version') as String),
      language: row.read('language') as String,
      itemCount: null,
      source: '',
      url: null,
      uri: null,
    )).toList();
  }

  @override
  Future<void> updateFoodDatabase(FoodDatabaseInfo foodDatabaseInfo) async {
    await (database.update(database.foodDatabases)
          ..where((tbl) => tbl.id.equals(foodDatabaseInfo.id)))
        .write(FoodDatabasesCompanion(
          name: Value(foodDatabaseInfo.name),
          description: Value(foodDatabaseInfo.description),
          version: Value(foodDatabaseInfo.version.toString()),
          language: Value(foodDatabaseInfo.language),
          updatedAt: Value(DateTime.now()),
        ));
  }
}
