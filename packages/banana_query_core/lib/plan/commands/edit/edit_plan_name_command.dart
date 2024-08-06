import '../../meal_plan.dart';
import '../../../commands/food_plan_command.dart';

class EditPlanNameCommand extends BananaQueryCommand {
  EditPlanNameCommand({ required this.newName, required this.plan });

  final String newName;

  /// {planUsed} is the plans that was used at the moment of execution.
  final MealPlan plan;
  String? oldName;

  @override
  Future<bool> execute() {
    assertCanExecute();
    return Future(() {
      oldName = plan.name;
      plan.name = newName;
      return true;
    });
  }

  @override
  bool get isUndoable => true;

  @override
  Future<bool> redo() {
    assertCanRedo();

    return Future(() {
      plan.name = newName;
      return true;
    });
  }

  @override
  Future<bool> undo() {
    assertCanUndo();

    return Future(() {
      plan.name = oldName!;
      return true;
    });
  }
}