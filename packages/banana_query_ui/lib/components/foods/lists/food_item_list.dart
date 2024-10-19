import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_ui/components/foods/lists/food_item_tile.dart';
import 'package:flutter/material.dart';

typedef OnFoodItemSelect = void Function(NutritionalEntity foodItem, int index, bool? isSelected);

class FoodItemList extends StatefulWidget {
  FoodItemList({
    super.key,
    required this.foodItems,
    this.selectable = false,
    this.selected = const [],
    this.onSelect,
    this.shrinkWrap = false,
    this.showPortions = false,
  });

  final List<NutritionalEntity> foodItems;
  final Map<String, FoodPortion> selectedFoodItemsPortions = {};

  final OnFoodItemSelect? onSelect;
  final List<int> selected;
  final bool selectable;
  final bool shrinkWrap;
  final bool showPortions;

  @override
  State<StatefulWidget> createState() {
    return FoodItemListState();
  }
}

class FoodItemListState extends State<FoodItemList> {

  List<NutritionalEntity> get foodItems => widget.foodItems;
  OnFoodItemSelect? get onSelect => widget.onSelect;
  List<int> get selected => widget.selected;
  bool get selectable => widget.selectable;
  bool get shrinkWrap => widget.shrinkWrap;
  Map<String, FoodPortion> get selectedFoodItemsPortions => widget.selectedFoodItemsPortions;
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: shrinkWrap,
      itemCount: foodItems.length,
      itemBuilder: (context, index) {
        NutritionalEntity foodItem = foodItems[index];
        return FoodItemTile(
          showMacroNutrients: true,
          leading: selectable ? Checkbox(
              value: selected.contains(index),
              onChanged: (selected) { onSelect?.call(foodItem, index, selected); }
          ) : null,
          foodItem: foodItem
        );
      },
    );
  }
}