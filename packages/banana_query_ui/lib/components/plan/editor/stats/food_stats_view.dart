import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/plan/day/plan_day.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'macro_nutrients_stats.dart';
import 'micros/micro_nutrients_stats.dart';

class PlanStatsView extends StatefulWidget {
  const PlanStatsView(
      {super.key, required this.plan, required this.foods, this.selectedDay});

  final MealPlan plan;
  final List<PortionedFood> foods;
  final PlanDay? selectedDay;

  @override
  State<StatefulWidget> createState() {
    return PlanStatsViewState();
  }
}

class PlanStatsViewState extends State<PlanStatsView>
    with SingleTickerProviderStateMixin {
  // -------------------------------- PROPS -------------------------------- //
  MealPlan get plan => widget.plan;
  List<PortionedFood> get foods => widget.foods;
  PlanDay? get selectedDay => widget.selectedDay;

  // -------------------------------- STATE -------------------------------- //
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 40,
          width: 800,
          child: TabBar(
              controller: tabController,
              unselectedLabelColor: Theme.of(context).colorScheme.secondary,
              tabs: [
                Tab(text: S.of(context).planEditorViewMacroNutrients),
                Tab(text: S.of(context).planEditorViewMicroNutrients),
              ]),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        SizedBox(
            height: 800,
            width: 800,
            child: TabBarView(controller: tabController, children: [
              MacroNutrientsStats(
                foods: foods,
                plan: plan,
                selectedDay: selectedDay,
              ),
              MicroNutrientStats(
                foods: selectedDay != null
                    ? plan.getFoodsByDay(selectedDay!)
                    : foods,
              )
            ])),
      ],
    );
  }
}
