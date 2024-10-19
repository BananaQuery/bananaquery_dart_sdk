import 'package:banana_query_core/plan/meal_plan.dart';
import '../../../day/plan_entry.dart';
import '../../../../commands/food_plan_command.dart';

class ShrinkFoodItemEntry extends BananaQueryCommand {
  ShrinkFoodItemEntry({required this.entry, required this.plan});

  final PlanEntry entry;
  MealPlan plan;

  @override
  Future<bool> execute() {
    assertCanExecute();
    return Future(() {
      entry.dayCount--;
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
      entry.dayCount++;
      return true;
    });
  }
}
