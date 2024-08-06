// import 'dart:convert';
//
// import 'package:banana_query_api/custom/quantized_food.dart';
// import 'package:colonel/command_base.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:tile_table/cell/i_jcell.dart';
// import 'package:tile_table/cell/j_cell.dart';
// import 'package:tile_table/dataset/commands/create/add_entry_dataset_command.dart';
// import 'package:tile_table/dataset/commands/delete/delete_entry_dataset_command.dart';
// import 'package:tile_table/dataset/commands/move/move_selection_left_dataset_command.dart';
// import 'package:tile_table/dataset/commands/move/move_selection_right_dataset_command.dart';
// import 'package:tile_table/dataset/commands/move/move_selection_to_next_set.dart';
// import 'package:tile_table/dataset/commands/move/move_selection_to_previous_set.dart';
// import 'package:tile_table/dataset/commands/resize/expand_selection_dataset_command.dart';
// import 'package:tile_table/dataset/commands/resize/shrink_selection_dataset_command.dart';
// import 'package:tile_table/dataset/i_tile_dataset.dart';
// import 'package:tile_table/table/table_clipboard.dart';
//
// class DeleteSelectionIntent extends Intent {
//   const DeleteSelectionIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
//
// class CopySelectionIntent extends Intent {
//   const CopySelectionIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
//
// class PasteSelectionIntent extends Intent {
//   const PasteSelectionIntent({ required this.dataset, required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
//   final ITileDataset dataset;
// }
//
// class MoveSelectionRightIntent extends Intent {
//   const MoveSelectionRightIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
//
// class MoveSelectionLeftIntent extends Intent {
//   const MoveSelectionLeftIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
//
// class MoveSelectionToNextSetIntent extends Intent {
//   const MoveSelectionToNextSetIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
//
// class MoveSelectionToPreviousSetIntent extends Intent {
//   const MoveSelectionToPreviousSetIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
//
// class ExpandSelectionIntent extends Intent {
//   const ExpandSelectionIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
// class ShrinkSelectionIntent extends Intent {
//   const ShrinkSelectionIntent({ required this.clipboard });
//   final TableClipboard<PortionedFood> clipboard;
// }
//
// class MoveSelectionRightAction extends Action<MoveSelectionRightIntent> {
//   MoveSelectionRightAction({ required this.commandExecutor });
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(covariant MoveSelectionRightIntent intent) {
//     commandExecutor?.call(
//         MoveSelectionRightDatasetCommand(selectedCells: intent.clipboard.selectedCells)
//     );
//     return null;
//   }
// }
//
// class MoveSelectionLeftAction extends Action<MoveSelectionLeftIntent> {
//   MoveSelectionLeftAction({ required this.commandExecutor });
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(covariant MoveSelectionLeftIntent intent) {
//     commandExecutor?.call(
//         MoveSelectionLeftDatasetCommand(selectedCells: intent.clipboard.selectedCells)
//     );
//     return null;
//   }
// }
//
// class MoveSelectionToNextSetAction extends Action<MoveSelectionToNextSetIntent> {
//   MoveSelectionToNextSetAction({ required this.commandExecutor });
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(covariant MoveSelectionToNextSetIntent intent) {
//     commandExecutor?.call(
//         MoveSelectionToNextSet(selectedCells: intent.clipboard.selectedCells)
//     );
//     return null;
//   }
// }
//
// class MoveSelectionToPreviousSetAction extends Action<MoveSelectionToPreviousSetIntent> {
//   MoveSelectionToPreviousSetAction({ required this.commandExecutor });
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(covariant MoveSelectionToPreviousSetIntent intent) {
//     commandExecutor?.call(
//         MoveSelectionToPreviousSet(selectedCells: intent.clipboard.selectedCells)
//     );
//     return null;
//   }
// }
//
// class CopySelectionAction extends Action<CopySelectionIntent> {
//   @override
//   Object? invoke(CopySelectionIntent intent) async {
//     await Clipboard.setData(ClipboardData(text:
//       jsonEncode(intent.clipboard.selectedCells.map((e) => e.value.toJson()).toList()))
//     );
//     intent.clipboard.copySelection();
//     return null;
//   }
// }
//
// class PasteSelectionAction extends Action<PasteSelectionIntent> {
//
//   PasteSelectionAction({ required this.commandExecutor });
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(PasteSelectionIntent intent) async {
//     intent.clipboard.clearClipboard();
//     String? clipboardData = (await Clipboard.getData("text/plain"))?.text;
//
//     if (clipboardData != null) {
//       try {
//         List<PortionedFood> entries = (jsonDecode(clipboardData) as Iterable<dynamic>)
//             .map((e) => PortionedFood.fromJson(e))
//             .toList();
//
//         for (IJCell<PortionedFood> cell in intent.clipboard.selectedCells) {
//           JPosition position = cell.location;
//           int tableIndex = intent.dataset.dataset.indexWhere((element) => element.cells.contains(cell));
//           intent.dataset.removeEntry(cell);
//
//           for (PortionedFood entry in entries) {
//             intent.dataset.addEntry(
//                 tableIndex,
//                 JCell<PortionedFood>(
//                     location: position,
//                     value: entry
//                 )
//             );
//           }
//         }
//
//         for (String actionButtonId in intent.clipboard.selectedActionButtons) {
//           List<String> buttonIds = actionButtonId.split('-');
//           int tableIndex = int.parse(buttonIds.first);
//           int columnIndex = int.parse(buttonIds.last);
//
//           commandExecutor?.call(AddEntriesDatasetCommand(
//             entries: entries.map((entry) => JCell<PortionedFood>(
//                 location: JPosition(start: columnIndex, size: 1),
//                 value: entry
//             )).toList(),
//             index: tableIndex,
//           ));
//         }
//       } catch(e) {
//         if (kDebugMode) {
//           print("Invalid cell data");
//         }
//       }
//     }
//
//     return null;
//   }
// }
//
// class DeleteSelectionAction extends Action<DeleteSelectionIntent> {
//   DeleteSelectionAction({ required this.commandExecutor });
//
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(DeleteSelectionIntent intent) {
//     // if (intent.clipboard.selectedCells.isNotEmpty) {
//     //   commandExecutor?.call(
//     //       DeleteEntryDatasetCommand(entry: intent.clipboard.selectedCells.first)
//     //   );
//     // }
//     return null;
//   }
// }
//
// class ExpandSelectionAction extends Action<ExpandSelectionIntent> {
//   ExpandSelectionAction({ required this.commandExecutor });
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(covariant ExpandSelectionIntent intent) {
//     // return commandExecutor?.call(ExpandSelectionDatasetCommand(selectedCells: intent.clipboard.selectedCells));
//   }
// }
//
// class ShrinkSelectionAction extends Action<ShrinkSelectionIntent> {
//   ShrinkSelectionAction({ required this.commandExecutor });
//   final CommandCallback? commandExecutor;
//
//   @override
//   Object? invoke(covariant ShrinkSelectionIntent intent) {
//     // return commandExecutor?.call(ShrinkSelectionDatasetCommand(selectedCells: intent.clipboard.selectedCells));
//   }
// }