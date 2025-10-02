import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/plan/meal_plan.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../../confirmations/slide_to_confirm.dart';
import '../../../containers/selectable_container.dart';
import '../../../foods/compact_item_view.dart';

typedef OnSyncPlan = Function(bool item);

/// This widget is used when user chose to keep the version of the food item
/// found in the database. Because of this we need to ask the user if we need
/// to update the food item being referenced in the food plan.
class DatabaseSyncView extends StatefulWidget {
  const DatabaseSyncView(
      {super.key,
      required this.plan,
      required this.databaseName,
      required this.item,
      required this.onNavigateBack,
      required this.onSync});

  final MealPlan plan;
  final NutritionalEntity item;
  final String databaseName;
  final OnSyncPlan onSync;
  final VoidCallback onNavigateBack;

  @override
  State<StatefulWidget> createState() {
    return DatabaseSyncViewState();
  }
}

class DatabaseSyncViewState extends State<DatabaseSyncView> {
  MealPlan get plan => widget.plan;
  NutritionalEntity get item => widget.item;
  String get databaseName => widget.databaseName;
  int get usageCount =>
      plan.entries.where((element) => element.foodUid == item.id).length;
  OnSyncPlan get onSync => widget.onSync;
  VoidCallback get onNavigateBack => widget.onNavigateBack;

  @override
  Widget build(BuildContext context) {
    Color onPrimary = Theme.of(context).colorScheme.onPrimary;
    Color secondary = Theme.of(context).colorScheme.secondary;
    Color onSecondary = Theme.of(context).colorScheme.onSecondary;
    TextStyle displayStyle = Theme.of(context).textTheme.displaySmall!;
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(S.of(context).updateDatabaseWithMealPlanItemTitle,
              style: displayStyle),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          SelectableText(
            S.of(context).updateDatabaseWithMealPlanItemMessageOne,
          ),
          SelectableText(
            S.of(context).updateDatabaseWithMealPlanItemMessageTwo,
          ),
          SelectableText(
            S.of(context).updateDatabaseWithMealPlanItemMessageThree,
          ),
          const Padding(padding: EdgeInsets.only(top: 15.0)),
          SelectableContainer(
            isSelected: true,
            onTap: (isSelected) {},
            child: CompactFoodItemView(
                title: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 55,
                        color: secondary,
                        padding: const EdgeInsets.only(left: 15.0),
                        alignment: Alignment.centerLeft,
                        child: Text("$databaseName - ${item.name}",
                            style: TextStyle(color: onSecondary)),
                      ),
                    )
                  ],
                ),
                foodItem: PortionedFood(
                    item: item, quantity: 1, portion: item.portions.first)),
          )
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              onNavigateBack.call();
            },
            child: Container(
                height: 35,
                width: 80,
                alignment: Alignment.center,
                child: Text(
                  S.of(context).back,
                )),
          ),
          ElevatedButton(
              onPressed: () {
                onSync.call(false);
              },
              child: Container(
                  height: 35,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).no,
                    style: TextStyle(color: onPrimary),
                  ))),
          const Padding(padding: EdgeInsets.only(right: 15.0)),
          ElevatedButton(
              onPressed: () async {
                bool? isConfirmed = await slideToConfirm(
                  context,
                  Text(S.of(context).pleaseConfirmUpdate),
                  Text(S.of(context).yourDatabaseWillBeUpdateWithFoodPlanItem),
                );

                if (isConfirmed != null && isConfirmed) {
                  onSync.call(true);
                }
              },
              child: Container(
                  height: 35,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).yes,
                    style: TextStyle(color: onPrimary),
                  ))),
          const Padding(padding: EdgeInsets.only(right: 20.0)),
        ],
      ),
    );
  }
}
