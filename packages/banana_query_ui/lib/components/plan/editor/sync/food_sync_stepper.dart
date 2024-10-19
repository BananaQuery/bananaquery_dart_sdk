import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_ui/components/plan/editor/sync/plan_update_confirmation.dart';
import 'package:flutter/material.dart';

import 'database_sync_view.dart';
import 'database_update_confirmation.dart';
import 'food_sync_view.dart';
import 'no_changes_view.dart';

typedef FoodItemCallback = Function(NutritionalEntity foodItem);

class FoodSyncStepper extends StatefulWidget {
  const FoodSyncStepper(
      {super.key,
      required this.plan,
      required this.dbInfo,
      required this.planItem,
      required this.databaseItem,
      required this.onUpdatePlan,
      required this.onUpdateDatabase});

  final MealPlan plan;
  final FoodDatabaseInfo dbInfo;
  final NutritionalEntity planItem;
  final NutritionalEntity databaseItem;

  final FoodItemCallback onUpdatePlan;
  final FoodItemCallback onUpdateDatabase;

  @override
  State<StatefulWidget> createState() {
    return FoodSyncStepperState();
  }
}

class FoodSyncStepperState extends State<FoodSyncStepper>
    with SingleTickerProviderStateMixin {
  // ----------------------- PROPS ------------------------
  MealPlan get plan => widget.plan;
  FoodDatabaseInfo get dbInfo => widget.dbInfo;
  NutritionalEntity get planItem => widget.planItem;
  NutritionalEntity get databaseItem => widget.databaseItem;
  FoodItemCallback get onUpdatePlan => widget.onUpdatePlan;
  FoodItemCallback get onUpdateDatabase => widget.onUpdateDatabase;

  // -------------------- WIDGET STATE --------------------
  late TabController tabController;
  late NutritionalEntity selectedItem;

  @override
  void initState() {
    selectedItem = databaseItem;
    tabController = TabController(
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TabBarView(
        controller: tabController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          FoodSyncView(
            planName: plan.name,
            databaseName: dbInfo.name,
            planItem: planItem,
            databaseItem: databaseItem,
            onSelect: (foodItem) {
              setState(() {
                selectedItem = foodItem;
                if (selectedItem == databaseItem) {
                  /// If we get here is because the user already confirmed to use the database item
                  /// in the meal plan this confirmation happens inside of the FoodSyncView.
                  onUpdatePlan(databaseItem);
                  tabController.animateTo(3);
                } else {
                  tabController.animateTo(1);
                }
              });
            },
          ),
          DatabaseSyncView(
            item: selectedItem,
            plan: plan,
            databaseName: dbInfo.name,
            onNavigateBack: () {
              tabController.animateTo(0);
            },
            onSync: (updateDatabase) {
              if (updateDatabase) {
                /// If we get here is because the user already confirmed to update the database
                /// this confirmation happens inside of the DatabaseSyncView.
                onUpdateDatabase(planItem);
                tabController.animateTo(2);
              } else {
                tabController.animateTo(4);
              }
            },
          ),
          DatabaseUpdateConfirmation(),
          PlanUpdateConfirmation(),
          const NoChangesView()
        ]);
  }
}
