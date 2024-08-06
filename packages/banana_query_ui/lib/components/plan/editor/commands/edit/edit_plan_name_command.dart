
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:colonel/command_base.dart';

class EditPlanNameCommand extends CommandBase {
  EditPlanNameCommand({ required this.newName, required this.plan }) : oldName = plan.name;

  static const String commandType = "EditPlanNameCommand";
  final String newName;
  final String oldName;
  /// {plan} is the plan that will be modified
  final MealPlan plan;

  @override
  Future<bool> execute() {
    assertCanExecute();
    return Future(() {
      plan.name = newName;
      executionState = ExecutionState.executed;
      return true;
    });
  }

  @override
  Future<bool> undo() {
    assertCanUndo();
    return Future(() {
      plan.name = oldName;
      executionState = ExecutionState.undone;
      return true;
    });
  }

  @override
  Map<String, dynamic> toJson() => {
    "type": type,
    "newName": newName,
    "oldName": oldName,
    "plan": plan.toJson()
  };

  @override
  String get type => commandType;

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