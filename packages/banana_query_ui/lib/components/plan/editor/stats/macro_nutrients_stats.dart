import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/plan/day/plan_day.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'distribution/calorie_distribution_view.dart';
import 'macros/macro_distribution_view.dart';

class MacroNutrientsStats extends StatefulWidget {
  const MacroNutrientsStats({
    super.key,
    required this.plan,
    required this.foods,
    this.selectedDay,
  });

  final List<PortionedFood> foods;
  final MealPlan plan;
  final PlanDay? selectedDay;

  @override
  _MacroNutrientsStatsState createState() => _MacroNutrientsStatsState();
}

class _MacroNutrientsStatsState extends State<MacroNutrientsStats> {
  List<PortionedFood> get foods => widget.foods;
  MealPlan get plan => widget.plan;
  PlanDay? get selectedDay => widget.selectedDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0, bottom: 10.0),
          child: Text(S.of(context).macrosAndGroups,
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        Container(
            padding: const EdgeInsets.only(top: 15.0),
            height: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MacroDistributionView(foods: foods),
                // FoodGroupDistribution(foods: foods),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Text(S.of(context).calorieDistribution,
              style: Theme.of(context).textTheme.headlineMedium),
        ),
        Container(
            padding: const EdgeInsets.only(top: 10.0),
            height: 430,
            width: 800,
            child: CalorieDistributionView(
              foods: foods,
              plan: plan,
              selectedDay: selectedDay,
            ))
      ],
    );
  }
}
