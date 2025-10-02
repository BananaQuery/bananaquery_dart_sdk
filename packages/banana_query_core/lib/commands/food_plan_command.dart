import 'dart:async';
import 'command_exceptions.dart';

///
/// The PlanCommand is the base class for all
///
enum ExecutionState { notExecuted, executed, undone, redone }

abstract class BananaQueryCommand  {
  ExecutionState executionState = ExecutionState.notExecuted;
  static StreamController listener = StreamController();
  bool notifyListenersOnExecution = true;

  void assertCanExecute() {
    if (executionState == ExecutionState.executed || executionState == ExecutionState.redone) {
      throw CommandExecutionException();
    }
  }

  void assertCanRedo() {
    if (executionState != ExecutionState.undone) {
      throw CommandRedoException();
    }
  }

  void assertCanUndo() {
    if (isUndoable == false) {
      throw CommandUndoException();
    }
    if (executionState != ExecutionState.executed || executionState != ExecutionState.redone) {
      throw CommandUndoException();
    }
  }


  Future<bool> execute();
  Future<bool> undo();
  Future<bool> redo();
  bool get isUndoable;
}