import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_ui/components/foods/lists/portioned_food_tile.dart';
import 'package:flutter/material.dart';

typedef OnFoodItemSelect = void Function(NutritionalEntity foodItem, int index, bool? isSelected);

class PortionedFoodItemList extends StatelessWidget {
  const PortionedFoodItemList({
    super.key,
    required this.foodItems,
    this.selectable = false,
    this.selected = const [],
    this.onSelect,
    this.shrinkWrap = false,
  });

  final List<PortionedFood> foodItems;
  final OnFoodItemSelect? onSelect;
  final List<int> selected;
  final bool selectable;
  final bool shrinkWrap;


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        PortionedFood portionedFood = foodItems[index];
        return PortionedFoodTile(
            leading: selectable ? Checkbox(
                value: selected.contains(index),
                onChanged: (selected) { onSelect?.call(portionedFood.item, index, selected); }
            ) : null,
            portionedFood: portionedFood
        );
      },
    );
  }
}