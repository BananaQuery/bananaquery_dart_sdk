import 'package:banana_query_core/plan/daily_meal_plan.dart';
import 'package:banana_query_core/plan/day/plan_day.dart';
import 'package:banana_query_core/plan/meal/plan_meal.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_database/banana_query_database.dart';
import 'package:banana_query_ui/components/plan/editor/food_plan_editor.dart';
import 'package:colonel/integration_mixin.dart';
import 'package:example/bananaquery_database_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/widget_preview.dart';

class MealPlanDemo extends StatefulWidget {
  const MealPlanDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return MealPlanDemoState();
  }
}

class MealPlanDemoState extends State<MealPlanDemo> with CommandMixin {

  late MealPlan plan;

  @override
  void initState() {
    plan = DailyMealPlan.empty(
        name: "Protein Plan",
        days: [
          PlanDay(index: 0, name: "Monday"),
          PlanDay(index: 1, name: "Tuesday"),
          PlanDay(index: 2, name: "Wednesday"),
          PlanDay(index: 3, name: "Thursday"),
        ],
        meals: [
          PlanMeal(index: 0, name: "Breakfast"),
          PlanMeal(index: 1, name: "Lunch"),
          PlanMeal(index: 2, name: "Dinner"),
        ]
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BananaQueryDatabaseLoader(
      builder: (BuildContext context, BananaQueryDatabase database) {
        return Column(
            children: [
              Expanded(
                  child: Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: WidgetPreview(
                      widget: StreamBuilder(
                        stream: commandRx,
                        builder: (context, snapshot) {
                          return FoodPlanEditor(
                            commandHandler: execute,
                            plan: plan,
                            database: database,
                          );
                        }
                      ),
                      code: 'FoodItemView(foodItem: item)',
                    ),
                  )
              )
            ]
        );
      },
    );
  }
}