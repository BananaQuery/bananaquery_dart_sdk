import 'package:banana_query_core/commands/food_plan_command.dart';
import 'package:banana_query_core/plan/meal_plan.dart';

import '../../../day/plan_entry.dart';

class ExpandFoodItemEntry extends BananaQueryCommand {
  ExpandFoodItemEntry({required this.entry, required this.plan});

  final PlanEntry entry;
  final MealPlan plan;

  @override
  Future<bool> execute() {
    assertCanExecute();
    return Future(() {
      entry.dayCount++;
      return true;
    });
  }

  @override
  bool get isUndoable => throw UnimplementedError();

  @override
  Future<bool> redo() {
    assertCanRedo();
    return execute();
  }

  @override
  Future<bool> undo() {
    assertCanUndo();
    return Future(() {
      entry.dayCount--;
      return true;
    });
  }
}
