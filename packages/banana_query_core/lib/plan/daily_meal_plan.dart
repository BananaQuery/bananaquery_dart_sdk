import 'dart:convert';

import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:uuid/uuid.dart';
import '../database/food_database_info.dart';
import '../factories/food_factory.dart';
import 'day/plan_day.dart';
import 'day/plan_entry.dart';
import 'meal_plan.dart';
import 'meal/plan_meal.dart';

class DailyMealPlan implements MealPlan<PlanDay> {
  DailyMealPlan(
      {required this.foodItems,
      required this.foodSources,
      required this.referencedDatabases,
      required this.entries,
      required this.days,
      required this.name,
      required this.meals,
      this.description,
      createdAt,
      uuid,
      accessKey})
      : uuid = uuid ?? const Uuid().v4(),
        createdAt = createdAt ?? DateTime.now(),
        accessKey = accessKey ?? const Uuid().v4();

  DailyMealPlan.empty({
    required this.name,
    required this.days,
    required this.meals,
  })  : uuid = const Uuid().v4(),
        foodItems = {},
        foodSources = {},
        referencedDatabases = {},
        entries = [],
        description = '',
        createdAt = DateTime.now(),
        accessKey = const Uuid().v4();

  @override
  Map<String, FoodDatabaseInfo> referencedDatabases = {};

  @override
  Map<String, String> foodSources = {};

  @override
  Map<String, NutritionalEntity> foodItems;

  @override
  List<PlanMeal> meals; // Meal name to meal object

  @override
  List<PlanDay> days; // Day name to day object

  @override
  List<PlanEntry> entries;

  @override
  final String uuid;

  @override
  final String accessKey;

  @override
  String name;

  @override
  String? description;

  @override
  DateTime createdAt;

  @override
  int? cachedHash;

  @override
  Map<String, double> get dailyCalories =>
      dailyEntries.map((key, value) => MapEntry(
          key,
          value
              .map((e) => _entryToPortionedFood(e))
              .map((entry) => (entry.getCalories).amount ?? 0.0)
              .reduce((value, element) => value + element)));

  @override
  Map<String, List<PlanEntry>> get dailyEntries =>
      Map.fromEntries(days.map((e) => MapEntry(e.name,
          entries.where((element) => element.dayIndex == e.index).toList())));

  @override
  Map<String, Map<String, double>> get macroDistribution =>
      throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() => {
        'name': name,
        'uuid': uuid,
        'days': days.map((e) => e.toJson()).toList(),
        'meals': meals.map((e) => e.toJson()).toList(),
        'entries': entries.map((e) => e.toJson()).toList(),
        'foodItems':
            foodItems.map((key, value) => MapEntry(key, value.toJson())),
        'foodSources': foodSources,
        'referencedDatabases': referencedDatabases
            .map((key, value) => MapEntry(key, jsonEncode(value.toJson()))),
        'accessKey': accessKey,
        'description': description,
        'createdAt': createdAt.toIso8601String(),
      };

  static DailyMealPlan fromJson(Map<String, dynamic> json) {
    return DailyMealPlan(
      name: json['name'],
      uuid: json['uuid'],
      days: (json["days"])?.map<PlanDay>((d) => PlanDay.fromJson(d)).toList() ??
          [],
      meals: (json["meals"])
              ?.map<PlanMeal>((m) => PlanMeal.fromJson(m))
              .toList() ??
          [],
      entries: json["entries"]
              ?.map<PlanEntry>((e) => PlanEntry.fromJson(e))
              .toList() ??
          [],
      accessKey: json['accessKey'],
      description: json['description'],
      createdAt: DateTime.parse(json['createdAt']),
      foodItems: (json["foodItems"] as Map).map((key, value) =>
          MapEntry(key, FoodFactory.standard().fromJson(value))),
      foodSources: json["foodSources"]?.cast<String, String>() ?? {},
      referencedDatabases: json["referencedDatabases"]
              ?.map<String, FoodDatabaseInfo>((key, value) =>
                  MapEntry<String, FoodDatabaseInfo>(
                      key, FoodDatabaseInfo.fromJson(jsonDecode(value)))) ??
          {},
    );
  }

  PortionedFood _entryToPortionedFood(PlanEntry entry) {
    return PortionedFood(
      quantity: entry.quantity,
      item: foodItems[entry.foodUid]!,
      portion: entry.portion,
    );
  }

  DailyMealPlan copyWith({List<PlanDay>? days, List<PlanEntry>? entries}) {
    return DailyMealPlan(
        foodItems: foodItems,
        foodSources: foodSources,
        referencedDatabases: referencedDatabases,
        entries: entries ?? this.entries,
        days: days ?? this.days,
        name: name,
        meals: meals,
        createdAt: createdAt);
  }

  @override
  List<PlanEntry> getEntriesByDay(PlanDay day) {
    return entries
        .where((element) => element.overlapsWithDay(day.index))
        .toList();
  }

  @override
  List<PortionedFood> getFoodsByDay(PlanDay day) {
    return entries
        .where((element) => element.overlapsWithDay(day.index))
        .map((e) => PortionedFood(
            item: foodItems[e.foodUid]!,
            quantity: e.quantity,
            portion: e.portion))
        .toList();
  }
}
