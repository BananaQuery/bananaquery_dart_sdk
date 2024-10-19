import 'package:banana_query_core/foods/item/food_item.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b12/vitamin_b12_added.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_ui/components/foods/item/food_item_view.dart';
import 'package:flutter/material.dart';

class FoodItemDemo extends StatefulWidget {
  const FoodItemDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return FoodItemDemoState();
  }
}

class FoodItemDemoState extends State<FoodItemDemo> {
  final FoodItem item = FoodItem.empty().copyWith(name: "Banana") as FoodItem;
  final Nutrient vitaminB12 = VitaminB12Added(amount: 1000);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 800,
        child: ListView(children: [
          SizedBox(
              width: 500,
              height: 1000,
              child: FoodItemView(
                foodItem: item,
              )),
        ]));
  }
}
