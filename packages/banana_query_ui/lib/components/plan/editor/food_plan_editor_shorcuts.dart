import 'dart:convert';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:colonel/command_base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tile_table/table/table_clipboard.dart';

import 'commands/add/add_entries_to_plan_command.dart';
import 'commands/day/move_entries_to_next_day_command.dart';
import 'commands/day/move_entries_to_previous_day_command.dart';
import 'commands/delete/delete_plan_entries_command.dart';
import 'commands/edit/expand_plan_entry_command.dart';
import 'commands/edit/shrink_plan_entry_command.dart';
import 'commands/meal/move_entries_to_next_meal_command.dart';
import 'commands/meal/move_entry_to_previous_meal_command.dart';

typedef CommandHandler = Function(CommandBase);

/// Everytime that a food data is copied into the clipboard this object will be used
/// as the information
class FoodClipboardData {
  FoodClipboardData({required this.items, required this.referencedDatabases});
  List<PortionedFood> items;
  List<FoodDatabaseInfo> referencedDatabases;

  Map<String, dynamic> toJson() => {
        "items": items.map((e) => e.toJson()).toList(),
        "referencedDatabases":
            referencedDatabases.map((e) => e.toJson()).toList()
      };

  static FoodClipboardData fromJson(Map<String, dynamic> json) {
    return FoodClipboardData(
        items: (json["items"] as List)
            .map((e) => PortionedFood.fromJson(e))
            .toList(),
        referencedDatabases: (json["referencedDatabases"] as List)
            .map((e) => FoodDatabaseInfo.fromJson(e))
            .toList());
  }
}

class DeleteSelectionIntent extends Intent {
  const DeleteSelectionIntent({required this.plan, required this.clipboard});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class CopySelectionIntent extends Intent {
  const CopySelectionIntent({required this.clipboard, required this.plan});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class PasteSelectionIntent extends Intent {
  const PasteSelectionIntent({required this.plan, required this.clipboard});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class MoveSelectionRightIntent extends Intent {
  const MoveSelectionRightIntent({required this.clipboard, required this.plan});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class MoveSelectionLeftIntent extends Intent {
  const MoveSelectionLeftIntent({required this.clipboard, required this.plan});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class MoveSelectionToNextSetIntent extends Intent {
  const MoveSelectionToNextSetIntent(
      {required this.clipboard, required this.plan});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class MoveSelectionToPreviousSetIntent extends Intent {
  const MoveSelectionToPreviousSetIntent({required this.clipboard});
  final TableClipboard<PlanEntry> clipboard;
}

class ExpandSelectionIntent extends Intent {
  const ExpandSelectionIntent({required this.plan, required this.clipboard});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class ShrinkSelectionIntent extends Intent {
  const ShrinkSelectionIntent({required this.plan, required this.clipboard});
  final TableClipboard<PlanEntry> clipboard;
  final MealPlan plan;
}

class MoveSelectionRightAction extends Action<MoveSelectionRightIntent> {
  MoveSelectionRightAction({required this.commandExecutor});
  final CommandHandler? commandExecutor;

  @override
  Object? invoke(covariant MoveSelectionRightIntent intent) {
    List<PlanEntry> entries = intent.clipboard.selectedCells
        .map((selection) => selection.cell.value)
        .toList();

    final int dayCount = intent.plan.days.length;

    List<PlanEntry> entriesToMove = entries
        .where((element) => element.dayIndex + element.dayCount < dayCount)
        .toList();

    if (entriesToMove.isNotEmpty) {
      commandExecutor
          ?.call(MoveEntriesToNextDayCommand(entries: entriesToMove));
    }

    return null;
  }
}

class MoveSelectionLeftAction extends Action<MoveSelectionLeftIntent> {
  MoveSelectionLeftAction({required this.commandExecutor});
  final CommandHandler? commandExecutor;

  @override
  Object? invoke(covariant MoveSelectionLeftIntent intent) {
    List<PlanEntry> entries = intent.clipboard.selectedCells
        .map((selection) => selection.cell.value)
        .toList();

    List<PlanEntry> entriesToMove =
        entries.where((element) => element.dayIndex > 0).toList();

    if (entriesToMove.isNotEmpty) {
      commandExecutor
          ?.call(MoveEntriesToPreviousDayCommand(entries: entriesToMove));
    }

    return null;
  }
}

class MoveSelectionToNextSetAction
    extends Action<MoveSelectionToNextSetIntent> {
  MoveSelectionToNextSetAction({required this.commandExecutor});
  final CommandHandler? commandExecutor;

  @override
  Object? invoke(covariant MoveSelectionToNextSetIntent intent) {
    List<PlanEntry> entries = intent.clipboard.selectedCells
        .map((selection) => selection.cell.value)
        .toList();

    final int lastMealIndex = intent.plan.meals.length - 1;

    List<PlanEntry> entriesToMove =
        entries.where((element) => element.mealIndex < lastMealIndex).toList();

    if (entriesToMove.isNotEmpty) {
      commandExecutor
          ?.call(MoveEntriesToNextMealCommand(entries: entriesToMove));
    }

    return null;
  }
}

class MoveSelectionToPreviousSetAction
    extends Action<MoveSelectionToPreviousSetIntent> {
  MoveSelectionToPreviousSetAction({required this.commandExecutor});
  final CommandHandler? commandExecutor;

  @override
  Object? invoke(covariant MoveSelectionToPreviousSetIntent intent) {
    List<PlanEntry> entries = intent.clipboard.selectedCells
        .map((selection) => selection.cell.value)
        .toList();

    List<PlanEntry> entriesToMove =
        entries.where((element) => element.mealIndex > 0).toList();

    if (entriesToMove.isNotEmpty) {
      commandExecutor
          ?.call(MoveEntriesToPreviousMealCommand(entries: entriesToMove));
    }

    return null;
  }
}

class CopySelectionAction extends Action<CopySelectionIntent> {
  @override
  Object? invoke(CopySelectionIntent intent) async {
    final MealPlan plan = intent.plan;

    List<PortionedFood> foodItems = intent.clipboard.selectedCells.map((e) {
      PlanEntry entry = e.cell.value;
      String foodUid = e.cell.value.foodUid;
      NutritionalEntity food = plan.foodItems[foodUid]!;

      return PortionedFood(
          item: food, portion: entry.portion, quantity: entry.quantity);
    }).toList();

    List<FoodDatabaseInfo> databases = foodItems
        .map((e) => plan.referencedDatabases[e.item.id])
        .whereType<FoodDatabaseInfo>()
        .toSet()
        .toList();

    FoodClipboardData clipboardData =
        FoodClipboardData(items: foodItems, referencedDatabases: databases);

    await Clipboard.setData(
        ClipboardData(text: jsonEncode(clipboardData.toJson())));
    return null;
  }
}

class PasteSelectionAction extends Action<PasteSelectionIntent> {
  PasteSelectionAction({required this.commandExecutor});
  final CommandHandler? commandExecutor;

  @override
  Object? invoke(PasteSelectionIntent intent) async {
    intent.clipboard.clearClipboard();
    String? clipboardData = (await Clipboard.getData("text/plain"))?.text;

    if (clipboardData != null) {
      try {
        var json = (jsonDecode(clipboardData) as Map<String, dynamic>);
        final data = FoodClipboardData.fromJson(json);

        List<NutritionalEntity> foods = data.items.map((e) => e.item).toList();
        final List<PlanEntry> newEntries = [];
        final List<FoodDatabaseInfo> referencedDatabases = [];

        for (var selection in intent.clipboard.selectedCells) {
          final int mealIndex = selection.datasetIndex;
          final int dayIndex = selection.cell.location.start;
          final int dayCount = selection.cell.location.size;

          final List<PlanEntry> currentCellEntries = data.items
              .map((f) => PlanEntry(
                    dayIndex: dayIndex,
                    dayCount: dayCount,
                    mealIndex: mealIndex,
                    foodUid: f.item.id,
                    portion: f.portion,
                    quantity: f.quantity,
                  ))
              .toList();

          newEntries.addAll(currentCellEntries);
        }

        for (var actionButtonId in intent.clipboard.selectedActionButtons) {
          List<String> buttonIds = actionButtonId.split('-');
          int mealIndex = int.parse(buttonIds.first);
          int dayIndex = int.parse(buttonIds.last);

          final List<PlanEntry> currentCellEntries = data.items
              .map((f) => PlanEntry(
                    dayIndex: dayIndex,
                    dayCount: 1,
                    mealIndex: mealIndex,
                    foodUid: f.item.id,
                    portion: f.portion,
                    quantity: f.quantity,
                  ))
              .toList();

          newEntries.addAll(currentCellEntries);
        }

        /// TODO: Add food sources here they should come when the user copies food items
        commandExecutor?.call(AddEntriesToPlanCommand(
            entries: newEntries,
            plan: intent.plan,
            foodItems: foods,
            databasesUsed: referencedDatabases,
            foodSources: {}));
      } catch (e) {}

      return null;
    }
    return null;
  }
}

class DeleteSelectionAction extends Action<DeleteSelectionIntent> {
  DeleteSelectionAction({required this.commandExecutor});

  final CommandHandler? commandExecutor;

  @override
  Object? invoke(DeleteSelectionIntent intent) {
    if (intent.clipboard.selectedCells.isNotEmpty) {
      List<PlanEntry> entries =
          intent.clipboard.selectedCells.map((e) => e.cell.value).toList();
      commandExecutor
          ?.call(DeletePlanEntriesCommand(entries: entries, plan: intent.plan));
    }
    return null;
  }
}

class ExpandSelectionAction extends Action<ExpandSelectionIntent> {
  ExpandSelectionAction({required this.commandExecutor});
  final CommandHandler? commandExecutor;

  @override
  Object? invoke(covariant ExpandSelectionIntent intent) {
    List<PlanEntry> entries =
        intent.clipboard.selectedCells.map((e) => e.cell.value).toList();

    int dayCount = intent.plan.days.length;

    List<PlanEntry> entriesToExpand = entries
        .where((element) => element.dayIndex + element.dayCount < dayCount)
        .toList();

    if (entriesToExpand.isNotEmpty) {
      return commandExecutor?.call(
          ExpandEntryIntoNextDay(entries: entriesToExpand, plan: intent.plan));
    }
    return null;
  }
}

class ShrinkSelectionAction extends Action<ShrinkSelectionIntent> {
  ShrinkSelectionAction({required this.commandExecutor});
  final CommandHandler? commandExecutor;

  @override
  Object? invoke(covariant ShrinkSelectionIntent intent) {
    List<PlanEntry> entries =
        intent.clipboard.selectedCells.map((e) => e.cell.value).toList();

    List<PlanEntry> entriesToShrink =
        entries.where((element) => element.dayCount > 1).toList();

    if (entriesToShrink.isNotEmpty) {
      return commandExecutor?.call(
          ShrinkPlanEntryCommand(entries: entriesToShrink, plan: intent.plan));
    }
    return null;
  }
}
