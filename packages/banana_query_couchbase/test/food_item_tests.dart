
import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_couchbase/banana_query_couchbase.dart';
import 'package:banana_query_database/database_importer.dart';
import 'package:uuid/uuid.dart';
import 'package:test/test.dart';

void main() async {
  var database = await BananaQueryCouchBase.initialize();
  final DatabaseImporter importer = DatabaseImporter(bananaQueryDatabase: database);
  await importer.importFromFilePath('test/assets/usda_test.bodsdb');

  test('Test Creating Food Item', () async {
    var foodItem = FoodItem.empty();
    await database.createFoodItem(foodItem);
    var foodItems = await database.getFoodItems();
    assert(foodItems.isNotEmpty);
  });

  test('Test Getting Food Item', () async {
    var foodItem = FoodItem.empty().copyWith(databaseId: Uuid().v4());
    await database.createFoodItem(foodItem);
    var retrieved = await database.getFoodItem(foodItem.id);
    assert(retrieved.id == foodItem.id && retrieved.name == foodItem.name);
  });

  test('Test Updating Food Item', () async {
    var foodItem = FoodItem.empty().copyWith(databaseId: Uuid().v4());
    await database.createFoodItem(foodItem);

    foodItem = foodItem.copyWith(name: "updated name");
    await database.updateFoodItem(foodItem);

    var retrieved = await database.getFoodItem(foodItem.id);
    assert(retrieved.id == foodItem.id && retrieved.name == foodItem.name);
  });

  test('Test Deleting Food Item', () async {
    var foodItem = FoodItem.empty().copyWith(databaseId: Uuid().v4());
    await database.createFoodItem(foodItem);
    await database.deleteFoodItemByID(foodItem.id);
    expect(() async => await database.getFoodDatabase(foodItem.id), throwsA(isA<Exception>()));
  });
}
