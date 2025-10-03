import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_ui/components/cards/food_item_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnFoodItemSelect = Function(PortionedFood);

class FoodItemOptionsView extends StatefulWidget {
  const FoodItemOptionsView(
      {super.key,
      required this.foodItems,
      required this.onSelect,
      this.selectedEntry,
      this.shrinkWrap = true});

  final List<NutritionalEntity> foodItems;
  final OnFoodItemSelect onSelect;
  final bool shrinkWrap;
  final PortionedFood? selectedEntry;

  @override
  State<StatefulWidget> createState() {
    return FoodItemOptionsViewState();
  }
}

class FoodItemOptionsViewState extends State<FoodItemOptionsView> {
  List<NutritionalEntity> get _foodItems => widget.foodItems;
  OnFoodItemSelect get _onSelect => widget.onSelect;
  bool get _shrinkWrap => widget.shrinkWrap;
  PortionedFood? get _selectedEntry => widget.selectedEntry;

  @override
  Widget build(BuildContext context) {
    return ListView(
        shrinkWrap: _shrinkWrap,
        children: _foodItems
            .map((e) => FoodItemCard(
                  key: ValueKey(e.id),
                  foodItem: e as FoodItem,
                ))
            .toList());
  }
}
