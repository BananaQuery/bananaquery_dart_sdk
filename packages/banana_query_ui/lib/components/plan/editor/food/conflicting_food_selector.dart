import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../confirmations/slide_to_confirm.dart';
import '../../../containers/selectable_container.dart';
import '../../../foods/compact_item_view.dart';

class ConflictingFoodSelector extends StatefulWidget {
  const ConflictingFoodSelector(
      {super.key, required this.planItem, required this.databaseItem});

  final NutritionalEntity planItem;
  final NutritionalEntity databaseItem;

  @override
  State<StatefulWidget> createState() {
    return ConflictingFoodSelectorState();
  }
}

class ConflictingFoodSelectorState extends State<ConflictingFoodSelector> {
  NutritionalEntity get planItem => widget.planItem;
  NutritionalEntity get databaseItem => widget.databaseItem;

  late NutritionalEntity? selectedItem;

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

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SelectableText(
          S.of(context).whichVersionOfThisFoodShouldWeUse,
          style: displayStyle,
        ),
        const Padding(padding: EdgeInsets.only(bottom: 10.0)),
        SelectableText(
          S.of(context).conflictingItemSelectionDialogMessageOne,
        ),
        SelectableText(S.of(context).conflictingItemSelectionDialogMessageTwo),
        const Padding(padding: EdgeInsets.only(bottom: 20.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableContainer(
              isSelected: selectedItem == planItem,
              onTap: (selected) {
                if (selectedItem != planItem) {
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
                          child: Text(
                              S.of(context).conflictingItemMealPlanItemTitle,
                              style: TextStyle(color: onSecondary)),
                        ),
                      )
                    ],
                  ),
                  foodItem: PortionedFood(
                      item: planItem,
                      quantity: 1,
                      portion: getItemDefaultPortion(planItem))),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
            ),
            SelectableContainer(
              isSelected: selectedItem == databaseItem,
              onTap: (selected) {
                if (selectedItem != databaseItem) {
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
                          child: Text(
                              S.of(context).conflictingItemDatabaseItemTitle,
                              style: TextStyle(color: onSecondary)),
                        ),
                      )
                    ],
                  ),
                  foodItem: PortionedFood(
                      item: databaseItem,
                      quantity: 1,
                      portion: getItemDefaultPortion(databaseItem))),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 45.0, right: 50.0),
                child: ElevatedButton(
                    onPressed: () async {
                      if (selectedItem != null && selectedItem != planItem) {
                        bool? isConfirmed = await slideToConfirm(
                          context,
                          Text(S.of(context).confirmYourSelection),
                          Text(S.of(context).conflictingItemReplacementMessage),
                        );
                        if (isConfirmed != null && isConfirmed) {
                          Navigator.pop(context, selectedItem);
                        }
                      } else {
                        Navigator.pop(context, selectedItem);
                      }
                    },
                    child: Container(
                        height: 35,
                        width: 80,
                        alignment: Alignment.center,
                        child: Text(
                          S.of(context).selectButtonText,
                          style: TextStyle(color: onPrimary),
                        )))),
          ],
        )
      ],
    );
  }
}
