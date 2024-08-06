

import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:colonel/command_base.dart';

class AddEntriesToPlanCommand extends CommandBase {
  AddEntriesToPlanCommand({
    required this.plan,
    required this.entries,
    required this.foodItems,
    required this.foodSources,
    required this.databasesUsed,
  });

  final MealPlan plan;
  final List<PlanEntry> entries;
  final List<NutritionalEntity> foodItems;
  final Map<String, String> foodSources;

  /// Food id to database id
  final List<FoodDatabaseInfo> databasesUsed;

  @override
  Future<bool> execute() async {
    plan.entries.addAll(entries);
    plan.foodItems.addEntries(foodItems.map((e) => MapEntry(e.id, e)));
    plan.referencedDatabases
        .addEntries(databasesUsed.map((e) => MapEntry(e.id, e)).toList());

    plan.foodSources.addEntries(foodSources.entries);
    return true;
  }

  @override
  Map<String, dynamic> toJson() => {
        "type": type,
        "plan": plan.toJson(),
        "entries": entries.map((e) => e.toJson())
      };

  @override
  String get type => "AddEntriesToPlanCommand";

  @override
  Future<bool> undo() async {
    plan.entries.removeWhere((e) => entries.contains(e));
    for (NutritionalEntity food in foodItems) {
      if (!plan.entries.any((element) => element.foodUid == food.id)) {
        plan.foodItems.remove(food.id);
        plan.foodSources.remove(food.id);
      }
    }
    return true;
  }

  @override
  bool get isUndoable => true;

  @override
  Future<bool> redo() {
    assertCanRedo();
    return execute().then((value) {
      executionState = ExecutionState.redone;
      return value;
    });
  }
}
