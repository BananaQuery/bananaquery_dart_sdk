import 'package:banana_query_core/database/food_database_info.dart';

abstract class FoodDatabaseRepo {
  Future<List<FoodDatabaseInfo>> getFoodDatabases();
  Future<FoodDatabaseInfo> getFoodDatabase(String databaseId);
  Future<void> createFoodDatabase(FoodDatabaseInfo foodDatabaseInfo);
  Future<void> updateFoodDatabase(FoodDatabaseInfo foodDatabaseInfo);
  Future<void> deleteFoodDatabaseByID(String databaseId);
  Future<List<FoodDatabaseInfo>> searchFoodDatabases(String query);
}