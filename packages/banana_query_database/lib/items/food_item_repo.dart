import 'package:banana_query_core/banana_query_api.dart';

abstract class FoodItemRepo {
  Future<List<NutritionalEntity>> getFoodItems();
  Future<NutritionalEntity> getFoodItem(String itemId);
  Future<bool> createFoodItem(NutritionalEntity foodItem);
  Future<void> createFoodItems(List<NutritionalEntity> foodItem);
  Future<bool> updateFoodItem(NutritionalEntity foodItem);
  Future<void> updateFoodItems(List<NutritionalEntity> foodItem);
  Future<bool> deleteFoodItemByID(String itemId);
  Future<List<NutritionalEntity>> searchFoodItems(String query);
}