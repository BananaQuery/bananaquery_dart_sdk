

import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:colonel/command_base.dart';

class DeletePlanEntriesCommand extends CommandBase {
  DeletePlanEntriesCommand({ required this.plan, required this.entries });

  final MealPlan plan;
  final List<PlanEntry> entries;

  @override
  Future<bool> execute() {
    assertCanExecute();
    plan.entries.removeWhere((e) => entries.contains(e));
    executionState = ExecutionState.executed;
    return Future.value(true);
  }

  @override
  Map<String, dynamic> toJson() => {
    "type": type,
    "entries": entries.map((e) => e.toJson())
  };

  @override
  String get type => "DeletePlanEntriesCommand";

  @override
  Future<bool> undo() {
    plan.entries.addAll(entries);
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