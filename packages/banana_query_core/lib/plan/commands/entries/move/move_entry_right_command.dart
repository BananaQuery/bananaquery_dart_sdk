import '../../../day/plan_entry.dart';
import '../../../../commands/food_plan_command.dart';
import '../../../meal_plan.dart';

class MoveEntryDownCommand extends BananaQueryCommand {
  MoveEntryDownCommand({ required this.entry, required this.plan });

  final PlanEntry entry;
  MealPlan plan;

  @override
  Future<bool> execute() {
    
    return Future(() {
      entry.dayIndex++;
      return true;
    });
  }

  @override
  bool get isUndoable => true;

  @override
  Future<bool> redo() {
    assertCanRedo();
    return execute();
  }

  @override
  Future<bool> undo() {
    assertCanUndo();
    return Future(() {
      entry.dayIndex--;
      return true;
    });
  }

}