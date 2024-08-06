import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/macro_totals.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MacroDistributionView extends StatefulWidget {
  const MacroDistributionView({super.key,  required this.foods });

  final List<PortionedFood> foods;
  
  @override
  State<StatefulWidget> createState() {
    return MacroDistributionViewState();
  }
}

class MacroDistributionViewState extends State<MacroDistributionView> {

  List<PortionedFood> get foods => widget.foods;

  late MacroTotals macroTotals;
  late double calories;
  double carbsPercentage = 0.0;
  double proteinPercentage = 0.0;
  double fatPercentage = 0.0;
  int touchedIndex = -1;

  @override
  void initState() {
    computeNutrientValues();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant MacroDistributionView oldWidget) {
    if (oldWidget.foods != foods) {
      computeNutrientValues();
    }
    super.didUpdateWidget(oldWidget);
  }

  void computeNutrientValues() {
    macroTotals = NutrientTotalsCalculator.getMacros(foods);
    calories = (macroTotals.carbs.amount * 4 + macroTotals.fats.amount * 9 + macroTotals.proteins.amount * 4);
    if (calories != 0) {
      carbsPercentage = ((macroTotals.carbs.amount * 4)/calories * 100).truncate().toDouble();
      proteinPercentage = ((macroTotals.proteins.amount * 4)/calories * 100).truncate().toDouble();
      fatPercentage = ((macroTotals.fats.amount * 9)/calories * 100).truncate().toDouble();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 600,
      alignment: Alignment.topLeft,
      child: Row(
        children: [
          Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(S.of(context).macroNutrientDistribution, textAlign: TextAlign.center),
                  ),
                  PieChart(
                      PieChartData(
                          centerSpaceRadius: 60.0,
                          pieTouchData: PieTouchData(
                            touchCallback: (FlTouchEvent event, pieTouchResponse) {
                              setState(() {
                                if (!event.isInterestedForInteractions ||
                                    pieTouchResponse == null ||
                                    pieTouchResponse.touchedSection == null) {
                                  touchedIndex = -1;
                                  return;
                                }
                                touchedIndex = pieTouchResponse
                                    .touchedSection!.touchedSectionIndex;
                              });
                            },
                          ),
                          sections: [
                            if (calories == 0)
                              PieChartSectionData(
                                title: "",
                                titleStyle: Theme.of(context).textTheme.bodySmall,
                                value: 100,
                                color: Colors.grey,
                                titlePositionPercentageOffset: 2.8,
                                radius: 15,
                              ),
                            PieChartSectionData(
                              title: "$carbsPercentage%",
                              value: carbsPercentage,
                              color: Colors.deepPurpleAccent,
                              titlePositionPercentageOffset: 2.8,
                              radius: 15,
                            ),
                            PieChartSectionData(
                              title: "$proteinPercentage%",
                              value: proteinPercentage,
                              color: Colors.blue,
                              titlePositionPercentageOffset: 2.8,
                              radius: 15,
                            ),
                            PieChartSectionData(
                              title: "$fatPercentage%",
                              value: fatPercentage,
                              color: Colors.yellow,
                              titlePositionPercentageOffset: 2.8,
                              radius: 15,
                            )
                          ]
                      )
                  )
                ],
              )
          ),
          Expanded(
              child: ListView(
                shrinkWrap: true,
                itemExtent: 20,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.deepPurpleAccent,
                      ),
                      SizedBox(width: 5),
                      Text(S.of(context).carb, style: Theme.of(context).textTheme.bodySmall)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 5),
                      Text(S.of(context).protein, style: Theme.of(context).textTheme.bodySmall)
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.yellow,
                      ),
                      SizedBox(width: 5),
                      Text(S.of(context).fat, style: Theme.of(context).textTheme.bodySmall)
                    ],
                  )
                ],
              )
          )
        ],
      )
    );
  }
}
