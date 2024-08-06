
import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:colonel/command_base.dart';

class ShrinkPlanEntryCommand extends CommandBase {
  ShrinkPlanEntryCommand({ required this.plan, required this.entries });

  final MealPlan plan;
  final List<PlanEntry> entries;

  @override
  Future<bool> execute() {
    assertCanExecute();
    for (PlanEntry entry in entries) {
      entry.dayCount--;
    }
    executionState = ExecutionState.executed;
    return Future.value(true);
  }

  @override
  Map<String, dynamic> toJson() => {
    "type": type,
    "plan": plan.toJson(),
    "entries": entries.map((e) => e.toJson())
  };

  @override
  String get type => "ShrinkPlanEntryCommand";

  @override
  Future<bool> undo() {
    assertCanUndo();
    for (PlanEntry entry in entries) {
      entry.dayCount++;
    }
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