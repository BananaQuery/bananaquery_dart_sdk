
import '../../../day/plan_entry.dart';
import '../../../../commands/food_plan_command.dart';
import '../../../meal_plan.dart';

class RemoveItemCommand extends BananaQueryCommand {
  RemoveItemCommand({ required this.entry, required this.plan });

  final PlanEntry entry;
  MealPlan plan;

  @override
  Future<bool> execute() {
    assertCanExecute();
    return Future(() {
      return plan.entries.remove(entry);
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
      plan.entries.add(entry);
      return true;
    });
  }
}