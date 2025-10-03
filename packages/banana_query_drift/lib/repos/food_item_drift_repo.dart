import 'package:banana_query_core/factories/food_factory.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_database/items/food_item_repo.dart';
import 'package:banana_query_drift/database/database.dart';
import 'package:drift/drift.dart';
import 'dart:convert';

class FoodItemDriftRepo extends FoodItemRepo {
  FoodItemDriftRepo({required this.database});

  final BananaQueryDriftDatabase database;

  @override
  Future<bool> createFoodItem(NutritionalEntity foodItem) async {
    if (foodItem.id.isEmpty) {
      throw ArgumentError(
          'Food item must have a database id and a unique id ("uid") to be valid');
    }
    
    try {
      await database.into(database.foodItems).insert(
        FoodItemsCompanion.insert(
          id: foodItem.id,
          name: foodItem.name,
          description: Value(foodItem.description),
          category: foodItem.foodCategory,
          subcategory: Value(foodItem.type),
          data: jsonEncode(foodItem.toJson()),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        ),
        mode: InsertMode.insertOrReplace,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> createFoodItems(List<NutritionalEntity> foodItems) async {
    final companions = foodItems.map((foodItem) => FoodItemsCompanion.insert(
      id: foodItem.id,
      name: foodItem.name,
      description: Value(foodItem.description),
      category: foodItem.foodCategory,
      subcategory: Value(foodItem.type),
      data: jsonEncode(foodItem.toJson()),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    )).toList();

    await database.batch((batch) {
      batch.insertAll(database.foodItems, companions, mode: InsertMode.insertOrReplace);
    });
  }

  @override
  Future<bool> deleteFoodItemByID(String itemId) async {
    final deletedRows = await (database.delete(database.foodItems)
          ..where((tbl) => tbl.id.equals(itemId)))
        .go();
    
    if (deletedRows == 0) {
      throw Exception('Food item with id $itemId does not exist');
    }
    
    return deletedRows > 0;
  }

  @override
  Future<NutritionalEntity> getFoodItem(String itemId) async {
    final query = database.select(database.foodItems)
      ..where((tbl) => tbl.id.equals(itemId));
    
    final result = await query.getSingleOrNull();
    
    if (result == null) {
      throw Exception('Food item with id $itemId does not exist');
    }
    
    final jsonData = jsonDecode(result.data) as Map<String, dynamic>;
    return FoodFactory.standard().fromJson(jsonData);
  }

  @override
  Future<List<NutritionalEntity>> getFoodItems() async {
    final results = await database.select(database.foodItems).get();
    
    return results.map((row) {
      final jsonData = jsonDecode(row.data) as Map<String, dynamic>;
      return FoodFactory.standard().fromJson(jsonData);
    }).toList();
  }

  @override
  Future<List<NutritionalEntity>> searchFoodItems(String searchQuery) async {
    // Use FTS for full-text search
    final results = await database.customSelect(
      '''
      SELECT fi.* FROM food_items fi
      JOIN food_items_fts fts ON fi.rowid = fts.rowid
      WHERE food_items_fts MATCH ?
      ORDER BY rank
      ''',
      variables: [Variable.withString(searchQuery)],
      readsFrom: {database.foodItems},
    ).get();
    
    return results.map((row) {
      final jsonData = jsonDecode(row.read('data') as String) as Map<String, dynamic>;
      return FoodFactory.standard().fromJson(jsonData);
    }).toList();
  }

  @override
  Future<bool> updateFoodItem(NutritionalEntity foodItem) async {
    if (foodItem.id.isEmpty) {
      throw ArgumentError(
          'Food item must have a database id and a unique id ("uid") to be valid');
    }
    
    try {
      await (database.update(database.foodItems)
            ..where((tbl) => tbl.id.equals(foodItem.id)))
          .write(FoodItemsCompanion(
            name: Value(foodItem.name),
            description: Value(foodItem.description),
            category: Value(foodItem.foodCategory),
            subcategory: Value(foodItem.type),
            data: Value(jsonEncode(foodItem.toJson())),
            updatedAt: Value(DateTime.now()),
          ));
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<void> updateFoodItems(List<NutritionalEntity> items) async {
    for (var item in items) {
      await updateFoodItem(item);
    }
  }
}
