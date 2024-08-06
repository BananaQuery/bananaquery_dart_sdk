
import '../../../day/plan_entry.dart';
import '../../../meal_plan.dart';
import '../../../../commands/food_plan_command.dart';

class AddItemCommand extends BananaQueryCommand {
  AddItemCommand({ required this.entry, required this.plan });

  final PlanEntry entry;
  MealPlan plan;

  @override
  Future<bool> execute() {
    assertCanExecute();
    return Future(() {
      plan.entries.add(entry);
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
      plan.entries.remove(entry);
      return true;
    });
  }
}