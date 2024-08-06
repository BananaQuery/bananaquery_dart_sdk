

import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:colonel/command_base.dart';

class UpdatePlanFoodItemCommand extends CommandBase {
  UpdatePlanFoodItemCommand({required this.food, required this.plan})
      : oldFood = plan.foodItems[food.id]!;

  final NutritionalEntity food;
  final NutritionalEntity oldFood;
  final MealPlan plan;

  @override
  Future<bool> execute() {
    assertCanExecute();
    plan.foodItems[food.id] = food;
    executionState = ExecutionState.executed;
    return Future.value(true);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "type": type,
      "food": food.toJson(),
      "oldFood": oldFood.toJson(),
      "plan": plan.toJson()
    };
  }

  @override
  String get type => "UpdatePlanFoodItemCommand";

  @override
  Future<bool> undo() {
    assertCanUndo();
    plan.foodItems[food.id] = oldFood;
    executionState = ExecutionState.undone;
    return Future.value(true);
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
