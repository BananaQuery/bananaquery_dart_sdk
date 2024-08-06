import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'calorie_distribution_mixin.dart';

class FoodCalorieDistribution extends StatefulWidget {
  FoodCalorieDistribution({ required this.foods });

  final List<PortionedFood> foods;

  @override
  State<StatefulWidget> createState() {
    return FoodCalorieDistributionState();
  }
}

class FoodCalorieDistributionState extends State<FoodCalorieDistribution> with CalorieDistributionMixin {

  List<PortionedFood> get foods => widget.foods;
  BubbleMapper bubbleMapper = BubbleMapper(width: 500, height: 500);
  int maxLabelLength = 10;

  double betweenSpace = 5.0;

  Color fatColor = Colors.red;
  Color proteinColor = Colors.green;
  Color carbColor = Colors.blue;


  Point<double> getLocation(String label, double size) {
    return bubbleMapper.addBubble(label, size);
  }

  List<ScatterSpot> getSpots() {
    return foods.map((e) {
      EnergyNutrient? calories = e.getCalories;
      double size = getSize(calories?.amount.toDouble() ?? 10.0);
      Point<double> location = getLocation(e.item.name, size);
      String label = e.item.name;
      if (e.item.name.length > maxLabelLength) {
        label = label.substring(0, maxLabelLength - 1);
      }

      return FoodSpot(
        label,
        calories?.amount.toDouble() ?? 0.0,
        location.x,
        location.y,
        radius: getSize(calories?.amount.toDouble() ?? 10.0),
        color: getColor(calories?.amount.toDouble() ?? 0.0)
      );
    }).toList();
  }

  BarChartGroupData generateGroupData(
      int x,
      double fatCalories,
      double proteinCalories,
      double carbsCalories,
      ) {
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

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
          scatterSpots: getSpots(),
          minX: 0,
          maxX: 500,
          minY: 0,
          maxY: 500,
          borderData: FlBorderData(
            show: false,
          ),
          gridData: FlGridData(
            show: true,
          ),
          titlesData: FlTitlesData(
            show: false,
          ),
          scatterTouchData: ScatterTouchData(
              enabled: true,
              touchTooltipData: ScatterTouchTooltipData(
                getTooltipItems: (spot) {
                  if (spot is FoodSpot) {
                    return ScatterTooltipItem("${spot.calories} kcal", textStyle: TextStyle(color: Colors.white));
                  }
                  return ScatterTooltipItem("${spot}", textStyle: TextStyle(color: Colors.white));
                },

              )
          ),
          scatterLabelSettings: ScatterLabelSettings(
              showLabel: true,
              getLabelFunction: (spotIndex, spot) {
                String label = bubbleMapper.bubbles[spotIndex].label;
                return label;
              }
          )
      ),
      swapAnimationDuration: const Duration(milliseconds: 600),
      swapAnimationCurve: Curves.fastOutSlowIn,
    );
  }
}

class FoodSpot extends ScatterSpot {
  FoodSpot(this.label, this.calories, super.x, super.y, {
    super.show,
    this.radius = 0.0,
    this.color = Colors.white,
  });

  double radius;
  Color color;
  String label;
  double calories;
}

