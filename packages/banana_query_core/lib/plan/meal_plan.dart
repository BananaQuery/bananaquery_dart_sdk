
import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';

import '../database/food_database_info.dart';
import 'day/plan_entry.dart';
import 'day/plan_day.dart';
import 'meal/plan_meal.dart';

abstract class MealPlan<TimeInterval> {
  String get uuid;
  String get accessKey;
  DateTime get createdAt;

  /// Databases used for this food plan. This maps database id to food database info.
  Map<String, FoodDatabaseInfo> get referencedDatabases;

  /// Maps food item id to food item and contains all food items used in food plan.
  Map<String, NutritionalEntity> get foodItems;

  ///  All entries for the food plan,
  List<PlanEntry> get entries;

  /// Maps a food id to a database id. The database id can be used to get the database info
  /// from the referencedDatabases map.
  Map<String, String> get foodSources;

  // Meals to be shown on the left side of the plan table.
  List<PlanMeal> get meals;

  // Time interval to be shown in the columns of the plan table.
  List<TimeInterval> get days;

  /// The name of the plans plans
  String get name;
  set name(String name);

  String? get description;
  set description(String? newDescription);

  // To compute the calories I need to get the list of plans entries.
  Map<String, List<PlanEntry>> get dailyEntries;
  Map<String, double> get dailyCalories;
  Map<String, Map<String, double>> get macroDistribution;

  int? get cachedHash;
  set cachedHash(int? newHash);

  @override
  int get hashCode => Object.hash(uuid, accessKey);

  List<PlanEntry> getEntriesByDay(PlanDay day);

  List<PortionedFood> getFoodsByDay(PlanDay day);

  @override
  bool operator ==(Object other) {
    if (other is MealPlan) {
      return other.uuid == uuid;
    }
    return false;
  }

  // ------ SERIALIZATION METHODS ---------- //
  Map<String, dynamic> toJson();
}
