import '../../meal_plan.dart';
import '../../../commands/food_plan_command.dart';

class UpdatePlanDescriptionCommand extends BananaQueryCommand {
  UpdatePlanDescriptionCommand({ required this.description, required this.plan });

  final String description;
  final MealPlan plan;
  String? oldDescription;


  @override
  Future<bool> execute() {
    return Future(() {
      oldDescription = plan.description;
      plan.description = description;
      return true;
    });
  }

  @override
  bool get isUndoable => true;

  @override
  Future<bool> redo() {
    assertCanRedo();
    return Future(() {
      plan.description = oldDescription;
      return true;
    });
  }

  @override
  Future<bool> undo() {
    assertCanUndo();
    return Future(() {
      plan.description = description;
      return true;
    });
  }
}