import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MicroNutrientTable extends StatefulWidget {
  const MicroNutrientTable({
    super.key,
    required this.foods,
    required this.nutrients,
  });

  final List<PortionedFood> foods;
  final List<String> nutrients;

  @override
  _MicroNutrientTableState createState() => _MicroNutrientTableState();
}

class _MicroNutrientTableState extends State<MicroNutrientTable> {
  // --------------------------- PROPS ------------------------------------- //
  List<PortionedFood> get foods => widget.foods;
  // UserProfile? get profile => widget.profile;
  List<String> get nutrients => widget.nutrients;

  // --------------------------- STATE ------------------------------------- //
  // final RDATable rdaValues = RDATable();

  // Map<String, Unit>? get profileSpecificValues {
  //   if (profile != null) {
  //     try {
  //       return rdaValues[profile!];
  //     } catch (e) {
  //       return null;
  //     }
  //   }
  //   return null;
  // }

  int get rowCount => nutrients.length;
  double rowHeight = 30.0;

  late List<Nutrient> microNutrientValues;

  // double computeRDAPercentage(String nutrientName, double value) {
  //   if (profileSpecificValues != null) {
  //     if (profileSpecificValues!.containsKey(nutrientName)) {
  //       return value / profileSpecificValues![nutrientName]!.value;
  //     }
  //   }
  //   return value;
  // }

  @override
  void initState() {
    computeNutrientValues();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MicroNutrientTable oldWidget) {
    if (foods != oldWidget.foods) {
      computeNutrientValues();
    }
    super.didUpdateWidget(oldWidget);
  }

  void computeNutrientValues() {
    microNutrientValues = NutrientTotalsCalculator.getNutrientTotals(foods);
  }

  String getNutrientValue(String nutrientName) {
    try {
      Nutrient nutrient =
          microNutrientValues.firstWhere((n) => n.type == nutrientName);
      return "? ${nutrient.units}";
    } catch (e) {
      return "? ${NutrientUnits.typicalMeasuringUnits[nutrientName]}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Table(
                columnWidths: const {
                  0: const FlexColumnWidth(2),
                  1: const FlexColumnWidth(1.5),
                },
                children: nutrients
                    .map((e) => TableRow(children: [
                          TableCell(
                            child: Container(
                                color: nutrients.indexOf(e) % 2 == 0
                                    ? null
                                    : Colors.black12,
                                height: rowHeight,
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Text(e),
                                )),
                          ),
                          TableCell(
                            child: Container(
                              color: nutrients.indexOf(e) % 2 == 0
                                  ? null
                                  : Colors.black12,
                              height: rowHeight,
                              alignment: Alignment.centerLeft,
                              child: SelectableText(getNutrientValue(e)),
                            ),
                          ),
                        ]))
                    .toList(),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
