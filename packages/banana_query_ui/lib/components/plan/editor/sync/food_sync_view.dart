import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../../../confirmations/slide_to_confirm.dart';
import '../../../containers/selectable_container.dart';
import '../../../foods/compact_item_view.dart';

typedef OnSelectItem = Function(NutritionalEntity item);

class FoodSyncView extends StatefulWidget {
  const FoodSyncView(
      {super.key,
      required this.planName,
      required this.databaseName,
      required this.planItem,
      required this.databaseItem,
      required this.onSelect});

  final String planName;
  final String databaseName;
  final NutritionalEntity planItem;
  final NutritionalEntity databaseItem;
  final OnSelectItem onSelect;

  @override
  State<StatefulWidget> createState() {
    return FoodSyncViewState();
  }
}

class FoodSyncViewState extends State<FoodSyncView> {
  String get planName => widget.planName;
  String get databaseName => widget.databaseName;
  NutritionalEntity get planItem => widget.planItem;
  NutritionalEntity get databaseItem => widget.databaseItem;
  OnSelectItem get onSelect => widget.onSelect;

  late NutritionalEntity selectedItem;

  @override
  void initState() {
    selectedItem = databaseItem;
    super.initState();
  }

  /// The default portion of an item is the first portion in the list.
  /// unless the list is empty, in which case it is a zero portion.
  FoodPortion getItemDefaultPortion(NutritionalEntity item) {
    try {
      return item.portions.first;
    } catch (e) {
      return const FoodPortion.zero();
    }
  }

  @override
  Widget build(BuildContext context) {
    Color onPrimary = Theme.of(context).colorScheme.onPrimary;
    Color primary = Theme.of(context).colorScheme.primary;
    Color secondary = Theme.of(context).colorScheme.secondary;
    Color onSecondary = Theme.of(context).colorScheme.onSecondary;
    TextStyle displayStyle = Theme.of(context).textTheme.displaySmall!;
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;

    return Scaffold(
      body: Container(
          // color: Colors.purple,
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SelectableText(
                S.of(context).weDontWantYourDataToGetLost,
                style: displayStyle,
              ),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
              SelectableText(
                S.of(context).foodPlansHoldTheirOwnData,
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(top: 35.0)),
              SelectableText(
                S.of(context).whichVersionOfThisFoodShouldWeUse,
                textAlign: TextAlign.center,
                style: titleStyle.copyWith(fontWeight: FontWeight.w700),
              ),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              Row(
                children: [
                  SelectableContainer(
                    isSelected: selectedItem == planItem,
                    onTap: (isSelected) {
                      if (!isSelected) {
                        setState(() {
                          selectedItem = planItem;
                        });
                      }
                    },
                    child: CompactFoodItemtView(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 55,
                              color: secondary,
                              padding: const EdgeInsets.only(left: 15.0),
                              alignment: Alignment.centerLeft,
                              child: Text(planName,
                                  style: TextStyle(color: onSecondary)),
                            ),
                          )
                        ],
                      ),
                      foodItem: PortionedFood(
                          item: planItem,
                          quantity: 1,
                          portion: getItemDefaultPortion(planItem)),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  SelectableContainer(
                    isSelected: selectedItem == databaseItem,
                    onTap: (isSelected) {
                      if (!isSelected) {
                        setState(() {
                          selectedItem = databaseItem;
                        });
                      }
                    },
                    child: CompactFoodItemtView(
                      title: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              height: 55,
                              color: secondary,
                              padding: const EdgeInsets.only(left: 15.0),
                              alignment: Alignment.centerLeft,
                              child: Text(databaseName,
                                  style: TextStyle(color: onSecondary)),
                            ),
                          )
                        ],
                      ),
                      foodItem: PortionedFood(
                          item: databaseItem,
                          quantity: 1,
                          portion: getItemDefaultPortion(databaseItem)),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () async {
              if (selectedItem == databaseItem) {
                bool? isConfirmed = await slideToConfirm(
                    context,
                    Text(S.of(context).pleaseConfirmUpdate),
                    Text(S.of(context).weWillUpdateThisFoodItemInMealPlan));

                if (isConfirmed != null && isConfirmed) {
                  onSelect.call(selectedItem);
                }
              } else {
                onSelect.call(selectedItem);
              }
            },
            child: Container(
                height: 35,
                width: 80,
                alignment: Alignment.center,
                child: Text(
                  S.of(context).update,
                  style: TextStyle(color: onPrimary),
                )),
          ),
          const Padding(padding: EdgeInsets.only(right: 10.0)),
        ],
      ),
    );
  }
}
