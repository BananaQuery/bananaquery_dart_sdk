import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:colonel/command_base.dart';

class MoveEntriesToNextDayCommand extends CommandBase {
  MoveEntriesToNextDayCommand({ required this.entries });

  final List<PlanEntry> entries;

  @override
  Future<bool> execute() {
    assertCanExecute();
    for (PlanEntry entry in entries) {
      entry.dayIndex++;
    }
    executionState = ExecutionState.executed;
    return Future.value(true);
  }

  @override
  Map<String, dynamic> toJson() => {
    "type": type,
    "entries": entries.map((e) => e.toJson())
  };

  @override
  String get type => "MoveEntryToNextDayCommand";

  @override
  Future<bool> undo() {
    assertCanUndo();
    for (PlanEntry entry in entries) {
      entry.dayIndex--;
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