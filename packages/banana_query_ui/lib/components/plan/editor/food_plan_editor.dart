
import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/plan/day/plan_day.dart';
import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_database/banana_query_database.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:banana_query_ui/components/plan/editor/stats/food_stats_view.dart';
import 'package:colonel/command_base.dart';
import 'package:colonel/integration_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:tile_table/table/table_clipboard.dart';
import 'dart:ui' as ui;


import '../../search/advanced_food_search.dart';
import '../viewer/coloring/usda_food_group_color_code.dart';
import '../viewer/tile_plan_view.dart';
import 'commands/add/add_entries_to_plan_command.dart';
import 'food/conflicting_food_selector.dart';
import 'food_plan_editor_shorcuts.dart';

typedef OnPlanChange = Function(MealPlan);
typedef CommandHandler = Function(CommandBase);

class FoodPlanEditor extends StatefulWidget {
  const FoodPlanEditor({
    super.key,
    required this.plan,
    required this.database,
    this.commandHandler,
    this.backgroundColor,
  });

  final MealPlan plan;
  final BananaQueryDatabase database;
  final CommandHandler? commandHandler;
  final Color? backgroundColor;

  @override
  State<StatefulWidget> createState() {
    return FoodPlanEditorState();
  }
}

class FoodPlanEditorState extends State<FoodPlanEditor> with CommandMixin {
  // ----------------------  PROPS ----------------------- //
  MealPlan get plan => widget.plan;
  BananaQueryDatabase get database => widget.database;

  // ----------------------  STATE ----------------------- //
  Future? descriptionEditingFuture;
  GlobalKey foodPlanComponentKey = GlobalKey();
  PlanDay? selectedDay;

  Color get backgroundColor => widget.backgroundColor ?? Colors.white;

  late final TextEditingController planNameController;
  final ScrollController planScrollController = ScrollController();
  final TableClipboard<PlanEntry> clipboard = TableClipboard(selectedCells: []);
  final FocusNode focusNode = FocusNode();

  /// ---------------------- WIDGET  PROPS ----------------------- ///
  CommandHandler? get commandHandler => widget.commandHandler;
  List<double> columnWidths = [];
  double planTableWidth = 0;

  @override
  void initState() {
    super.initState();
    planNameController = TextEditingController(text: plan.name);

    columnWidths = List.generate(plan.days.length, (index) => 350);
    planTableWidth = columnWidths.reduce((value, element) => value + element);

    clipboard.listener.listen((e) {
      focusNode.requestFocus();
    });
  }

  Future<Uint8List> getRawPlanImage() async {
    final RenderRepaintBoundary boundary = foodPlanComponentKey.currentContext!
        .findRenderObject()! as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage();
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List pngBytes = byteData!.buffer.asUint8List();
    return pngBytes;
  }

  bool isItemSynced(NutritionalEntity databaseItem, NutritionalEntity planItem) {
    return databaseItem.id == planItem.id &&
        databaseItem.hashCode == planItem.hashCode;
  }

  NutritionalEntity? getPlanItemByUid(String uid) {
    List<PlanEntry> matches =
        plan.entries.where((element) => element.foodUid == uid).toList();
    if (matches.isEmpty) {
      return null;
    } else {
      final PlanEntry entry = matches.first;
      return plan.foodItems[entry.foodUid];
    }
  }

  void _processCommand(CommandBase command) {
    if (commandHandler != null) {
      commandHandler!(command);
    } else {
      execute(command);
    }
  }

  /// TODO: Refactor this into its own component
  void openEntryEditModal(PlanEntry entry) async {
    NutritionalEntity foodItem = plan.foodItems[entry.foodUid]!;
    String? databaseId = plan.foodSources[entry.foodUid];
    NutritionalEntity? dbItem;


    // ignore: use_build_context_synchronously
    showDialog(
        context: context,
        useRootNavigator: false,
        builder: (BuildContext context) {
          Color onPrimary = Theme.of(context).colorScheme.onPrimary;
          PortionedFood serving = PortionedFood(
              item: foodItem, quantity: entry.quantity, portion: entry.portion);

          return StatefulBuilder(builder: (BuildContext context, setState) {
            return LayoutBuilder(builder: (context, constraints) {
              return Dialog(
                child: SizedBox(
                height: constraints.maxHeight * .95,
                width: 1250,
                child: Container()

                // AdvancedItemView(
                //   key: ValueKey(foodItem.hashCode),
                //   food: serving.item,
                //   onChange: (newFoodItem) {
                //     setState(() {
                //       foodItem = newFoodItem;
                //       serving = serving.copyWith(item: newFoodItem);
                //     });
                //   },
                //   selectedPortion: serving.portion,
                //   onQuantityChange: (newQuantity) {
                //     setState(() {
                //       serving = serving.copyWith(quantity: newQuantity);
                //     });
                //   },
                //   onPortionChange: (newPortion) {
                //     setState(() {
                //       serving = serving.copyWith(portion: newPortion ?? const FoodPortion.zero());
                //     });
                //   },
                //   editable: true,
                //   title: CustomItemViewTitle(
                //     database: plan
                //         .referencedDatabases[plan.foodSources[entry.foodUid]],
                //     planName: plan.name,
                //     foodName: serving.item.name,
                //     onSync: (context) {
                //       showBottomSheet(
                //           context: context,
                //           enableDrag: false,
                //           backgroundColor: Colors.black26,
                //           constraints: const BoxConstraints(),
                //           builder: (context) {
                //             return Scaffold(
                //                 extendBodyBehindAppBar: true,
                //                 appBar: AppBar(
                //                   backgroundColor: Colors.transparent,
                //                   elevation: 0.0,
                //                   leading: IconButton(
                //                     icon: const Icon(
                //                       Ionicons.close_outline,
                //                       color: Colors.black87,
                //                     ),
                //                     onPressed: () {
                //                       Navigator.of(context).pop();
                //                     },
                //                   ),
                //                 ),
                //                 body: FoodSyncStepper(
                //                   plan: plan,
                //                   dbInfo: db!.info,
                //                   planItem: foodItem,
                //                   databaseItem: dbItem!,
                //                   onUpdateDatabase: (selectedFoodItem) {
                //                     Command command = EditFoodItemCommand(
                //                         dbInfo: db!.info, item: foodItem);
                //                     setState(() {
                //                       dbItem = selectedFoodItem;
                //                       _processCommand(command);
                //                     });
                //                   },
                //                   onUpdatePlan: (selectedFoodItem) {
                //                     Command command = UpdatePlanFoodItemCommand(
                //                         plan: plan, food: selectedFoodItem);
                //                     setState(() {
                //                       foodItem = selectedFoodItem;
                //                       serving = serving.copyWith(item: foodItem);
                //                       _processCommand(command);
                //                     });
                //                   },
                //                 ));
                //           });
                //     },
                //     onNameChange: (newName) {
                //       setState(() {
                //         serving = serving.copyWith(
                //             item: serving.item.copyWith(name: newName));
                //       });
                //     },
                //     isItemSynced: isItemSynced(foodItem, dbItem!),
                //   ),
                //   padding: const EdgeInsets.only(bottom: 25.0),
                //   actions: [
                //     Padding(
                //         padding:
                //             const EdgeInsets.only(right: 20.0, bottom: 20.0),
                //         child: TextButton(
                //             onPressed: () {
                //               Navigator.of(context).pop();
                //             },
                //             child: Container(
                //                 height: 35,
                //                 width: 80,
                //                 alignment: Alignment.center,
                //                 child: Text(S.of(context).cancelButtonText)))),
                //     Padding(
                //       padding: const EdgeInsets.only(right: 20.0, bottom: 20.0),
                //       child: ElevatedButton(
                //           onPressed: () {
                //             // Might need to update the food item but not the database reference
                //             // which means this command would need to update the foods map in the plan if the food changes
                //             // and also the plan entry if it changes
                //             // What if I always change the food map? If the item didn't change it shouldn't affect if I replace the item any ways.
                //             //
                //             Command command = EditEntryCommand(
                //                 plan: plan, entry: entry,
                //                 food: serving,
                //                 portion: serving.portion,
                //                 portionQuantity: serving.quantity
                //             );
                //
                //             _processCommand(command);
                //             Navigator.of(context).pop();
                //           },
                //           child: Container(
                //               height: 35,
                //               width: 80,
                //               alignment: Alignment.center,
                //               child: Text(
                //                 S.of(context).saveButtonText,
                //                 style: TextStyle(color: onPrimary),
                //               ))),
                //     )
                //   ],
                // ),
              ));
            });
          });
        });
  }

  void openSearchModal(int dayIndex, int mealIndex) {
    double height = 800;
    double width = 930;
    PortionedFood? selectedItem;
    FoodDatabaseInfo? selectedItemDbInfo;
    showDialog(
        context: context,
        useRootNavigator: false,
        builder: (BuildContext context) {
          return Center(
              child: Dialog(
                  child: Container(
                      height: height,
                      width: width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 25.0),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15.0)),
                      ),
                      child: AdvancedFoodSearch(
                        database: database,
                        onSelect: (selection, database) {
                          selectedItem = selection;
                          selectedItemDbInfo = database;
                        },
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              if (selectedItem != null) {
                                CommandBase command = AddEntriesToPlanCommand(
                                    entries: [
                                      PlanEntry(
                                        dayIndex: dayIndex,
                                        mealIndex: mealIndex,
                                        dayCount: 1,
                                        foodUid: selectedItem!.item.id,
                                        portion: selectedItem!.portion,
                                        quantity: selectedItem!.quantity,
                                      ),
                                    ],
                                    plan: plan,
                                    foodItems: [selectedItem!.item],
                                    // Item selections coming back from the search modal should not have a null database info object
                                    databasesUsed: [selectedItemDbInfo!],
                                    foodSources: {
                                      selectedItem!.item.id:
                                          selectedItemDbInfo!.id
                                    });

                                NutritionalEntity? planItem =
                                    getPlanItemByUid(selectedItem!.item.id);

                                if (planItem == null ||
                                    isItemSynced(
                                        selectedItem!.item, planItem)) {
                                  _processCommand(command);
                                  Navigator.of(context).pop();
                                } else {
                                  NutritionalEntity? confirmedItem =
                                      await showDialog<NutritionalEntity>(
                                          useRootNavigator: false,
                                          context: context,
                                          builder: (context) {
                                            return Dialog(
                                                child: SingleChildScrollView(
                                              child: SizedBox(
                                                  width: 910,
                                                  height: 900,
                                                  child: Scaffold(
                                                    body:
                                                        ConflictingFoodSelector(
                                                      databaseItem:
                                                          selectedItem!.item,
                                                      planItem: planItem,
                                                    ),
                                                  )),
                                            ));
                                          });

                                  if (confirmedItem != null) {
                                    if (!confirmedItem.portions
                                        .contains(selectedItem!.portion)) {
                                      confirmedItem = confirmedItem.copyWith(
                                          portions: [
                                            ...confirmedItem.portions,
                                            selectedItem!.portion
                                          ]);
                                    }
                                    CommandBase command = AddEntriesToPlanCommand(
                                        entries: [
                                          PlanEntry(
                                            dayIndex: dayIndex,
                                            mealIndex: mealIndex,
                                            dayCount: 1,
                                            foodUid: selectedItem!.item.id,
                                            portion: selectedItem!.portion,
                                            quantity: selectedItem!.quantity,
                                          ),
                                        ],
                                        plan: plan,
                                        foodItems: [confirmedItem],
                                        databasesUsed: [selectedItemDbInfo!],
                                        foodSources: {
                                          selectedItem!.item.id:
                                              selectedItemDbInfo!.id
                                        });

                                    _processCommand(command);
                                    Navigator.of(context).pop();
                                  }
                                }
                              }
                            },
                            child: Text(
                              S.of(context).selectItemButtonText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary),
                            ),
                          )
                        ],
                      )))
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<SizeChangedLayoutNotification>(
        onNotification: (notification) {
          focusNode.requestFocus();
          return true;
        },
        child: SizeChangedLayoutNotifier(
            child: FocusableActionDetector(
                autofocus: true,
                enabled: true,
                focusNode: focusNode,
                shortcuts: <ShortcutActivator, Intent>{
                  const SingleActivator(LogicalKeyboardKey.arrowUp):
                      MoveSelectionToPreviousSetIntent(clipboard: clipboard),
                  const SingleActivator(LogicalKeyboardKey.arrowDown):
                      MoveSelectionToNextSetIntent(
                          clipboard: clipboard, plan: plan),
                  const SingleActivator(LogicalKeyboardKey.arrowRight):
                      MoveSelectionRightIntent(
                          clipboard: clipboard, plan: plan),
                  const SingleActivator(LogicalKeyboardKey.arrowLeft):
                      MoveSelectionLeftIntent(clipboard: clipboard, plan: plan),
                  const SingleActivator(LogicalKeyboardKey.backspace):
                      DeleteSelectionIntent(clipboard: clipboard, plan: plan),
                  const SingleActivator(LogicalKeyboardKey.minus):
                      ShrinkSelectionIntent(clipboard: clipboard, plan: plan),
                  const SingleActivator(LogicalKeyboardKey.equal):
                      ExpandSelectionIntent(clipboard: clipboard, plan: plan),
                  LogicalKeySet(
                          LogicalKeyboardKey.meta, LogicalKeyboardKey.keyC):
                      CopySelectionIntent(clipboard: clipboard, plan: plan),
                  LogicalKeySet(
                          LogicalKeyboardKey.meta, LogicalKeyboardKey.keyV):
                      PasteSelectionIntent(plan: plan, clipboard: clipboard),
                  const SingleActivator(LogicalKeyboardKey.keyC, control: true):
                      CopySelectionIntent(clipboard: clipboard, plan: plan),
                  const SingleActivator(LogicalKeyboardKey.keyV, control: true):
                      PasteSelectionIntent(plan: plan, clipboard: clipboard),
                },
                actions: <Type, Action<Intent>>{
                  MoveSelectionToPreviousSetIntent:
                      MoveSelectionToPreviousSetAction(
                          commandExecutor: commandHandler ?? execute),
                  MoveSelectionToNextSetIntent: MoveSelectionToNextSetAction(
                      commandExecutor: commandHandler ?? execute),
                  MoveSelectionRightIntent: MoveSelectionRightAction(
                      commandExecutor: commandHandler ?? execute),
                  MoveSelectionLeftIntent: MoveSelectionLeftAction(
                      commandExecutor: commandHandler ?? execute),
                  ExpandSelectionIntent: ExpandSelectionAction(
                      commandExecutor: commandHandler ?? execute),
                  ShrinkSelectionIntent: ShrinkSelectionAction(
                      commandExecutor: commandHandler ?? execute),
                  DeleteSelectionIntent: DeleteSelectionAction(
                      commandExecutor: commandHandler ?? execute),
                  CopySelectionIntent: CopySelectionAction(),
                  PasteSelectionIntent: PasteSelectionAction(
                      commandExecutor: commandHandler ?? execute)
                },
                child: Row (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(15.0)),
                        padding: const EdgeInsets.all(20.0),
                        child: TilePlanView(
                          columnsWidths: columnWidths,
                          plan: plan,
                          clipboard: clipboard,
                          onAddButtonClick: openSearchModal,
                          onItemClick: openEntryEditModal,
                          onSelectDay: (newSelection) {
                            setState(() {
                              selectedDay = newSelection;
                            });
                          },
                          options: PlanOptions(
                            itemColors: USDAFoodGroupColorCode(),
                          ),
                        ),
                    ),

                    if (selectedDay != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                            decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15.0)),
                            padding: const EdgeInsets.all(15.0),
                            child: PlanStatsView(
                              key: ValueKey(selectedDay),
                              plan: plan,
                              foods: plan.getFoodsByDay(selectedDay!),
                              selectedDay: selectedDay,
                            )
                        )
                      )

                  ],
                ))));
  }
}
