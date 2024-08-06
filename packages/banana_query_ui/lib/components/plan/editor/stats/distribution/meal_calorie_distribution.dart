
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/macro_totals.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_core/plan/day/plan_day.dart';
import 'package:banana_query_core/plan/meal/plan_meal.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../charts/legend/legend.dart';

class MealCalorieDistribution extends StatefulWidget {
  const MealCalorieDistribution({Key? super.key, required this.plan, this.selectedDay});

  final MealPlan plan;
  final PlanDay? selectedDay;

  @override
  _MealCalorieDistributionState createState() => _MealCalorieDistributionState();
}

class _MealCalorieDistributionState extends State<MealCalorieDistribution> with SingleTickerProviderStateMixin {
  // ---------------------------- PROPS ---------------------------- //
  MealPlan get plan => widget.plan;
  PlanDay? get selectedDay => widget.selectedDay;

  // ---------------------------- STATE ---------------------------- //
  int touchedIndex = -1;
  Map<String, double> foodGroupDistribution = {};
  double totalCalories = 0.0;
  double betweenSpace = 5.0;

  Color fatColor = Colors.red;
  Color proteinColor = Colors.green;
  Color carbColor = Colors.blue;

  @override
  void initState() {
    super.initState();
  }

  List<List<PortionedFood>> get mealFoods => plan.entries
    // This selects all entries if there is no selected day, otherwise it selects only the entries for the selected day.
    .where((element) => selectedDay == null || element.dayIndex == selectedDay!.index)
    .fold(
      List.generate(plan.meals.length, (index) => []), // initial folded value.
      (previousValue, element) {
        List<PortionedFood> foodItems = previousValue[element.mealIndex];
        PortionedFood food = PortionedFood(item: plan.foodItems[element.foodUid]!, quantity: element.quantity, portion: element.portion);
        foodItems.add(food);
        return previousValue;
    });

  List<MacroTotals> get mealMacros => mealFoods.map<MacroTotals>((e) => NutrientTotalsCalculator.getMacros(e)).toList();

  num get highestCalorieCount => mealMacros.fold(0.0, (previousValue, element) => previousValue > element.kilocalories.amount ? previousValue : element.kilocalories.amount);

  BarChartGroupData generateGroupData(int x, MacroTotals macroTotals) {

    double fatCalories = macroTotals.fats.amount * 9;
    double proteinCalories = macroTotals.proteins.amount * 4;
    double carbsCalories = macroTotals.carbs.amount * 4;
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: fatCalories,
          color: fatColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: fatCalories + betweenSpace,
          toY: fatCalories + betweenSpace + proteinCalories,
          color: proteinColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: fatCalories + betweenSpace + proteinCalories + betweenSpace,
          toY: fatCalories + betweenSpace + proteinCalories + betweenSpace + carbsCalories,
          color: carbColor,
          width: 5,
        ),
      ],
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    PlanMeal meal = plan.meals[value.toInt()];
    return SideTitleWidget(
      axisSide: meta.axisSide,
      child: Text(meal.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LegendsListWidget(
          legends: [
            Legend(S.of(context).fat, fatColor),
            Legend(S.of(context).protein, proteinColor),
            Legend(S.of(context).carb, carbColor),
          ],
        ),
        AspectRatio(
          aspectRatio: 2.0,
            child: BarChart(
              BarChartData(
                alignment: BarChartAlignment.spaceAround,
                titlesData: FlTitlesData(
                  // leftTitles: AxisTitles(),
                  rightTitles: AxisTitles(),
                  topTitles: AxisTitles(),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: bottomTitles,
                      reservedSize: 50,
                    ),
                  ),
                ),
                barTouchData: BarTouchData(
                  enabled: true,
                  touchTooltipData: BarTouchTooltipData(
                    getTooltipItem: (BarChartGroupData group, int groupIndex, BarChartRodData rod, int rodIndex) {
                      MacroTotals macros = mealMacros[groupIndex];
                      String tooltip = "";
                      if (rodIndex == 0) {
                        tooltip = "${S.of(context).fat}: ${macros.fats.amount.toStringAsFixed(1)}\n~${(macros.fats.amount * 9).toStringAsFixed(0)} cal";
                      } else if (rodIndex == 1) {
                        tooltip = "${S.of(context).protein}: ${macros.proteins.amount.toStringAsFixed(1)}\n~${(macros.proteins.amount * 4).toStringAsFixed(0)} cal";
                      } else if (rodIndex == 2) {
                        tooltip = "${S.of(context).carb}: ${macros.carbs.amount.toStringAsFixed(1)}\n~${(macros.carbs.amount * 4).toStringAsFixed(0)} cal";
                      }

                      return BarTooltipItem(
                        tooltip,
                        Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.white),
                      );
                    }
                  )
                ),
                borderData: FlBorderData(show: false),
                gridData: FlGridData(show: true),
                barGroups: plan.meals.map((e) => generateGroupData(e.index, mealMacros[e.index])).toList(),
                maxY: highestCalorieCount.toDouble() + 80,
              ),
            )
        ),
      ],
    );
  }
}

class MealSpot extends ScatterSpot {
  MealSpot(String label, double calories, double x, double y, {double radius = 10.0, Color color = Colors.white}) : super(0.0, 0.0) {
    this.label = label;
    this.calories = calories;
  }
  String label = "";
  double calories = 0.0;
}
