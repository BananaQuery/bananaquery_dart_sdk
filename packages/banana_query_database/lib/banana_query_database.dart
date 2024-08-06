import 'dart:async';

import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_database/food/food_database_repo.dart';
import 'package:banana_query_database/items/food_item_repo.dart';

import 'models/events/database/database_created_event.dart';
import 'models/events/database/database_deleted_event.dart';
import 'models/events/database/database_updated_event.dart';

typedef DatabaseQuery = Future<List<dynamic>> Function(dynamic);

class BananaQueryDatabase implements FoodDatabaseRepo, FoodItemRepo {
  BananaQueryDatabase({required databaseRepo, required foodRepo})
    : _databaseRepo = databaseRepo,
      _foodRepo = foodRepo;

  final FoodDatabaseRepo _databaseRepo;
  final FoodItemRepo _foodRepo;

  final StreamController _databaseStream = StreamController.broadcast();
  final StreamController _foodStream = StreamController.broadcast();

  @override
  Future<List<FoodDatabaseInfo>> getFoodDatabases() {
    return _databaseRepo.getFoodDatabases();
  }

  @override
  Future<void> createFoodDatabase(FoodDatabaseInfo foodDatabaseInfo) async {
     await _databaseRepo.createFoodDatabase(foodDatabaseInfo);
    _databaseStream.add(DatabaseCreatedEvent(foodDatabaseInfo));
  }

  @override
  Future<FoodDatabaseInfo> getFoodDatabase(String databaseId) {
    return _databaseRepo.getFoodDatabase(databaseId);
  }

  @override
  Future<void> deleteFoodDatabaseByID(String databaseId) async {
    FoodDatabaseInfo db = await _databaseRepo.getFoodDatabase(databaseId);
    await _databaseRepo.deleteFoodDatabaseByID(databaseId);
    _databaseStream.add(DatabaseDeletedEvent(db));
  }

  @override
  Future<void> updateFoodDatabase(FoodDatabaseInfo foodDatabaseInfo) async {
    await _databaseRepo.updateFoodDatabase(foodDatabaseInfo);
    _databaseStream.add(DatabaseUpdatedEvent(foodDatabaseInfo));
  }

  @override
  Future<List<FoodDatabaseInfo>> searchFoodDatabases(String query) {
    return _databaseRepo.searchFoodDatabases(query);
  }

  @override
  Future<bool> createFoodItem(NutritionalEntity foodItem) {
    return _foodRepo.createFoodItem(foodItem);
  }

  @override
  Future<void> createFoodItems(List<NutritionalEntity> items) {
    return _foodRepo.createFoodItems(items);
  }

  @override
  Future<List<NutritionalEntity>> getFoodItems() {
    return _foodRepo.getFoodItems();
  }

  @override
  Future<NutritionalEntity> getFoodItem(String itemId) {
    return _foodRepo.getFoodItem(itemId);
  }

  @override
  Future<bool> updateFoodItem(NutritionalEntity item) {
    return _foodRepo.updateFoodItem(item);
  }

  @override
  Future<void> updateFoodItems(List<NutritionalEntity> items) {
    return _foodRepo.updateFoodItems(items);
  }

  @override
  Future<bool> deleteFoodItemByID(String itemId) {
    return _foodRepo.deleteFoodItemByID(itemId);
  }

  @override
  Future<List<NutritionalEntity>> searchFoodItems(String query) {
    return _foodRepo.searchFoodItems(query);
  }

  Stream listenToFoodItemChanges() {
    return _foodStream.stream;
  }
}
