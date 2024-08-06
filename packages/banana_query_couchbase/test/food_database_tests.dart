import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_couchbase/banana_query_couchbase.dart';
import 'package:banana_query_database/database_importer.dart';
import 'package:uuid/uuid.dart';
import 'package:test/test.dart';

void main() async {
  var database = await BananaQueryCouchBase.initialize();

  FoodDatabaseInfo randomFoodDatabaseInfo() {
    return FoodDatabaseInfo(
        name: 'Test Database',
        description: 'Test Description',
        id: Uuid().v4(),
        version: 1.0,
        itemCount: 20,
        language: '',
        source: '',
        url: Uri(host: 'localhost'),
        uri: Uri(host: 'localhost')
    );
  }

  test('Test Importing Database', () async {
    DatabaseImporter importer = DatabaseImporter(bananaQueryDatabase: database);
    await importer.importFromFilePath('test/assets/usda_test.bodsdb');
    var items = await database.getFoodItems();
    assert(items.isNotEmpty);
  });

  test('Test Creating Food Database', () async {
    var mockDatabase = randomFoodDatabaseInfo();
    await database.createFoodDatabase(mockDatabase);
    var foodDatabases = await database.getFoodDatabases();
    assert(foodDatabases.isNotEmpty);
  });

  test('Test Getting Food Database', () async {
    var mockDatabase = randomFoodDatabaseInfo();
    await database.createFoodDatabase(mockDatabase);
    var retrieved = await database.getFoodDatabase(mockDatabase.id);
    assert(retrieved.id == mockDatabase.id && retrieved.name == mockDatabase.name);
  });

  test('Test Updating Food Database', () async {
    var mockDatabase = randomFoodDatabaseInfo();
    await database.createFoodDatabase(mockDatabase);
    mockDatabase = mockDatabase.copyWith(name: "updated name");
    await database.updateFoodDatabase(mockDatabase);
    var retrieved = await database.getFoodDatabase(mockDatabase.id);
    assert(retrieved.id == mockDatabase.id && retrieved.name == mockDatabase.name);
  });

  test('Test Deleting Food Database', () async {
    var mockDatabase = randomFoodDatabaseInfo();
    await database.createFoodDatabase(mockDatabase);
    await database.deleteFoodDatabaseByID(mockDatabase.id);
    expect(() async => await database.getFoodDatabase(mockDatabase.id), throwsA(isA<Exception>()));
  });
}
