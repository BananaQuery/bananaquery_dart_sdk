import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_core/plan/day/plan_day.dart';
import 'package:banana_query_core/plan/day/plan_entry.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_localization/plans/plan_localizer.dart';
import 'package:banana_query_ui/components/plan/viewer/tile/food_plan_entry_tile_desktop.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tile_table/cell/tile_cell.dart';
import 'package:tile_table/cell/tile_cell_position.dart';
import 'package:tile_table/column/tile_column.dart';
import 'package:tile_table/dataset/tile_dataset.dart';
import 'package:tile_table/table/table_clipboard.dart';
import 'package:tile_table/table/tile_table.dart';
import 'package:tile_table/view/tile_dataset_view.dart';
import 'package:tile_table/view/tile_table_view.dart';
import '../section_totals.dart';
import 'buttons/plan_add_button.dart';
import 'coloring/item_color_code.dart';
import 'coloring/usda_food_group_color_code.dart';

typedef OnSelectDay = Function(PlanDay?);
typedef OnItemClick = Function(PlanEntry);
typedef OnAddButtonClick = Function(int columnIndex, int mealIndex);

class PlanOptions {
  PlanOptions({
    this.selectableDays = true,
    this.showDailyTotals = true,
    this.showSectionTotals = false,
    this.editable = false,
    itemColors
  }) : itemColors = itemColors ?? USDAFoodGroupColorCode();

  bool selectableDays;
  bool showDailyTotals;
  bool showSectionTotals;
  bool editable;
  ItemColorCode itemColors;
}

class TilePlanView extends StatefulWidget {
  const TilePlanView({
    super.key,
    required this.plan,
    required this.options,
    this.editable = true,

    // ------------------- CALLBACKS ------------------- //
    this.onSelectDay,
    this.onItemClick,
    this.onAddButtonClick,

    this.clipboard,
    this.columnsWidths,
    this.showSectionTotals = false,
    this.showDayTotal = true,
  });

  final MealPlan plan;
  final PlanOptions options;
  final bool editable;

  final OnSelectDay? onSelectDay;
  final OnItemClick? onItemClick;
  final OnAddButtonClick? onAddButtonClick;

  final TableClipboard<PlanEntry>? clipboard;
  final List<double>? columnsWidths;

  final bool showSectionTotals;
  final bool showDayTotal;

  @override
  State<StatefulWidget> createState() {
    return TilePlanViewState();
  }
}

class TilePlanViewState extends State<TilePlanView> {
  MealPlan get _plan => widget.plan;
  List<double>? get _columnsWidths => widget.columnsWidths;

  OnSelectDay? get _onSelectDay => widget.onSelectDay;
  OnItemClick? get _onItemClick => widget.onItemClick;
  OnAddButtonClick? get _onAddButtonClick => widget.onAddButtonClick;

  late MergeStream streamGroup;
  late TableClipboard<PlanEntry> clipboard;

  final double defaultColumnWidth = 350;
  bool get _showDayTotal => widget.showDayTotal;
  bool get _showSectionTotals => widget.showSectionTotals;
  bool get _editable => widget.editable;
  PlanOptions get _options => widget.options;
  PlanDay? selectedDay;

  TileDataset<PlanEntry> getViewModel() {
    int currentDayIndex = 0;

    List<TileColumn> columns = _plan.days.map((e) {
      return TileColumn(index: currentDayIndex++, title: e.name);
    }).toList();

    List<TileTable<PlanEntry>> data = _plan.meals.map((meal) {
      int mealIndex = _plan.meals.indexOf(meal);
      List<TileCell<PlanEntry>> cells = _plan.entries
          .where((element) => element.mealIndex == mealIndex)
          .map((e) => TileCell(
              location: TileCellPosition(start: e.dayIndex, size: e.dayCount),
              value: e))
          .toList();

      return TileTable(name: meal.name, columns: columns, cells: cells);
    }).toList();

    return TileDataset(
      name: _plan.name,
      dataset: data,
      columns: columns,
    );
  }

  @override
  void initState() {
    clipboard = widget.clipboard ?? TableClipboard(selectedCells: []);
    streamGroup = MergeStream([
      clipboard.listener,
    ]); // TODO: Add plan listener
    super.initState();
  }

  NutritionalEntity? getFoodItemFromUid(String uid) {
    return _plan.foodItems[uid];
  }

  PortionedFood planEntryToPortionedFood(PlanEntry entry) {
    return PortionedFood(
        item: getFoodItemFromUid(entry.foodUid)!,
        portion: entry.portion,
        quantity: entry.quantity);
  }

  @override
  Widget build(BuildContext context) {
    TileDataset<PlanEntry> data = getViewModel();
    return StreamBuilder(
      stream: streamGroup,
      builder: (context, snapshot) {
        return TileDatasetView<PlanEntry>(
          columnWidths: _columnsWidths ??
              List.generate(data.dataset.first.columns.length,
                  (index) => defaultColumnWidth),
          columnsToShow: selectedDay != null ? [selectedDay!.index] : null,
          dataset: data,
          clipboard: clipboard,
          onSelect: (table, TileCell<PlanEntry> cell) {
            int index = data.dataset.indexOf(table);
            clipboard.selectCell(cell, index);
          },
          showTableDividers: true,
          columnTitleBuilder: (BuildContext context, TileColumn column) {
            PlanDay day = _plan.days.firstWhere((element) => element.name == column.title);
            return LayoutBuilder(
              builder: (context, constraints) {
                return InkWell(
                  key: UniqueKey(),
                  onTap: () {
                    setState(() {
                      if (day == selectedDay) {
                        selectedDay = null;
                      } else {
                        selectedDay = day;
                      }
                      _onSelectDay?.call(selectedDay);
                    });
                  },
                  child: Container(
                    color: day == selectedDay ? Theme.of(context).colorScheme.primary.withOpacity(.6) : null,
                      width: constraints.maxWidth,
                      height: constraints.maxHeight,
                      alignment: Alignment.center,
                      child: Text(
                        PlanLocalizer.localizeDay(column.title, context),
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ))
                );
              },
            );
          },
          tableTotalBuilder: _showSectionTotals
              ? (context, TileTable<PlanEntry> table, column,
                  List<TileCell<PlanEntry>> cells) {
                  return SectionTotals(
                    totals: NutrientTotalsCalculator.getMacros(cells
                        .map((e) => PortionedFood(
                            item: getFoodItemFromUid(e.value.foodUid)!,
                            quantity: e.value.quantity,
                            portion: e.value.portion))
                        .toList()),
                    color: Colors.transparent,
                    valueStyle: Theme.of(context).textTheme.labelMedium,
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 11),
                  );
                }
              : null,
          datasetTotalBuilder: _showDayTotal
              ? (context, column, List<TileCell<PlanEntry>> cells) {
                  return Container(
                      color:
                          Theme.of(context).colorScheme.primary.withAlpha(20),
                      child: SectionTotals(
                        totals: NutrientTotalsCalculator.getMacros(cells
                            .map((c) => planEntryToPortionedFood(c.value))
                            .toList()),
                        color: Colors.transparent,
                        valueStyle: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: Colors.black, fontSize: 11),
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontSize: 11),
                      ));
                }
              : null,
          actionButtonBuilder: _editable
              ? (context, TileTable<PlanEntry> table, column, startingAt) {
                  final int tableIndex = data.dataset.indexOf(table);
                  final String actionButtonId = "$tableIndex-$startingAt";
                  final bool isActionButtonSelected =
                      clipboard.isActionButtonSelected(actionButtonId);

                  return PlanAddButton(
                    key: ValueKey(actionButtonId),
                    onTap: () {
                      if (!isActionButtonSelected) {
                        clipboard.selectActionButton(actionButtonId);
                      } else {
                        final int mealIndex = data.dataset.indexOf(table);
                        final int columnIndex = startingAt;
                        _onAddButtonClick?.call(columnIndex, mealIndex);
                      }
                    },
                    iconColor: isActionButtonSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black12,
                    fontColor: isActionButtonSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black26,
                    borderColor: isActionButtonSelected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.black26,
                  );
                }
              : null,
          tableLabelWidth: 100,
          labelBuilder: (context, label) {
            if (label == 'total') {
              return Container(
                width: 100,
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 45,
                  width: 100,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(PlanLocalizer.localizeSection(label, context),
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13.0)),
                    ],
                  ),
                ),
              ],
            );
          },
          cellBuilder: (BuildContext context,
              TileTable<PlanEntry> table,
              TileCell<PlanEntry> cell,
              CommitCallback commit,
              VoidCallback? onSelect) {
            final bool isCellSelected = clipboard.isCellSelected(cell);
            final bool isCellCopied = clipboard.isCellInClipBoard(cell);
            final int tableIndex = data.dataset.indexOf(table);
            final PlanEntry planEntry = cell.value;
            final NutritionalEntity food = _plan.foodItems[planEntry.foodUid]!;
            return FoodPlanEntryTileDesktop(
              entry: PortionedFood(
                  item: food,
                  portion: planEntry.portion,
                  quantity: planEntry.quantity),
              borderColor: isCellSelected
                  ? _options.itemColors.getSelectedBorderColor(food)
                  : _options.itemColors.getItemBorderColor(food),
              color: isCellSelected
                  ? _options.itemColors.getSelectedBackgroundColor(food)
                  : _options.itemColors.getItemBackgroundColor(food),
              titleTextStyle: TextStyle(
                  color: isCellSelected
                      ? _options.itemColors.getSelectedTextColor(food)
                      : _options.itemColors.getItemTextColor(food),
                  fontWeight: FontWeight.bold),
              subtitleTextStyle: TextStyle(
                  color: isCellSelected
                      ? _options.itemColors.getSelectedTextColor(food)
                      : _options.itemColors.getItemTextColor(food)),
              hoverColor: _options.itemColors.getItemHoverColor(food),
              dashPattern: isCellCopied ? [5, 5] : [1, 0],
              onTap: () {
                if (!isCellSelected) {
                  clipboard.selectCell(cell, tableIndex);
                } else {
                  _onItemClick?.call(planEntry);
                }
              },
            );
          },
        );
      },
    );
  }
}
