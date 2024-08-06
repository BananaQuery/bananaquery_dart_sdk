import 'package:banana_query_core/banana_query_api.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class FoodPortionForm extends StatelessWidget {
  const FoodPortionForm({ super.key,
    this.portions = const [],
    this.selectedPortions = const [],
    this.emptyStateBuilder,
    this.onSelect,
  });

  final List<IFoodPortion> portions;
  final List<int> selectedPortions;
  final Widget Function()? emptyStateBuilder;
  final void Function(IFoodPortion, int)? onSelect;

  Widget noDataWidget() {
    if (emptyStateBuilder != null) {
      return emptyStateBuilder!();
    }
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.grey[200],
        child: const Text('No data'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return DataTable2(
        columnSpacing: 12,
        horizontalMargin: 12,
        minWidth: 600,
        showCheckboxColumn: true,
        showHeadingCheckBox: true,
        fixedTopRows: 1,
        onSelectAll: (isSelected) {},
        empty: noDataWidget(),
        columns: const [
          DataColumn2(
            label: Text('Portion Name'),
            size: ColumnSize.L,
          ),
          DataColumn(
            label: Text('Qty'),
          ),
          DataColumn(
            label: Text('Weight'),
          ),
        ],
        rows: portions.map((p) => DataRow2(
            selected: selectedPortions.contains(portions.indexOf(p)),
                  onSelectChanged: (isSelected) {
                    onSelect?.call(p, portions.indexOf(p));
                  },
                    cells: const [
              DataCell(TextField(
                decoration: InputDecoration(
                  hintText: 'Enter portion name',
                ),
              )),
              DataCell(TextField(
                decoration: InputDecoration(
                  hintText: 'Enter quantity',
                ),
              )),
              DataCell(TextField(
                decoration: InputDecoration(
                  hintText: 'Enter weight',
                ),
              )),
            ])).toList()
    );
  }

}