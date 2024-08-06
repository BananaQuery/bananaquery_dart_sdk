import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/plan/day/plan_day.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:flutter/material.dart';

import 'meal_calorie_distribution.dart';

class CalorieDistributionView extends StatefulWidget {
  const CalorieDistributionView({Key? key,
    required this.plan,
    required this.foods,
    this.selectedDay,
  }) : super(key: key);

  final List<PortionedFood> foods;
  final MealPlan plan;
  final PlanDay? selectedDay;

  @override
  _CalorieDistributionViewState createState() => _CalorieDistributionViewState();
}

class _CalorieDistributionViewState extends State<CalorieDistributionView> with SingleTickerProviderStateMixin {

  // -------------------------------- PROPS -------------------------------- //
  PlanDay? get selectedDay => widget.selectedDay;

  // -------------------------------- STATE -------------------------------- //
  int touchedIndex = -1;

  Map<String, double> foodGroupDistribution = {};
  late TabController tabController;
  double totalCalories = 0.0;

  List<PortionedFood> get foods => widget.foods;
  MealPlan get plan => widget.plan;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Color primary = Theme.of(context).colorScheme.primary;
    final Color secondary = Theme.of(context).colorScheme.secondary;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Row(
        //   children: [
        //     ChoiceChip(
        //       avatar: Icon(FoodIcons.orange, color: Colors.white),
        //       label: Text(S.of(context).foods),
        //       selected: tabController.index == 0,
        //       onSelected: (value) {
        //         setState(() {
        //           tabController.animateTo(0);
        //         });
        //       },
        //       selectedColor: primary,
        //       disabledColor: Colors.black,
        //       backgroundColor: Colors.black,
        //       selectedShadowColor: Colors.black,
        //       elevation: 10.0,
        //
        //     ),
        //     ChoiceChip(
        //       avatar: Icon(FoodIcons.cloche, color: Colors.white),
        //       label: Text(S.of(context).meals),
        //       selected: tabController.index == 1,
        //       onSelected: (value) {
        //         setState(() {
        //           tabController.animateTo(1);
        //         });
        //       },
        //       selectedColor: primary,
        //       disabledColor: Colors.black,
        //       backgroundColor: secondary,
        //       selectedShadowColor: Colors.black,
        //       elevation: 10.0,
        //
        //     ),
        //   ],
        // ),
        Padding(
          padding: EdgeInsets.only(top: 25.0),
        ),
        Expanded(
            child: Center(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
                child:
                SizedBox(
                  width: 750,
                  child: MealCalorieDistribution(plan: plan, selectedDay: selectedDay),)

            ),
            // TabBarView(
            //   controller: tabController,
            //   children: [
            //     FoodCalorieDistribution(foods: foods),
            //     Center(
            //       // mainAxisAlignment: MainAxisAlignment.center,
            //       // crossAxisAlignment: CrossAxisAlignment.center,
            //       child:
            //         SizedBox(
            //           width: 600,
            //           child: MealCalorieDistribution(plan: plan),)
            //
            //     )
            //   ],
            // )
        )
      ],
    );
  }
}