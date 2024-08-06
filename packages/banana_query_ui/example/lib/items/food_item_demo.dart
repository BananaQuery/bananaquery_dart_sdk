import 'package:banana_query_core/foods/item/food_item.dart';
import 'package:banana_query_ui/components/foods/food_item_view.dart';
import 'package:example/components/widget_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodItemDemo extends StatefulWidget {
  const FoodItemDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return FoodItemDemoState();
  }
}

class FoodItemDemoState extends State<FoodItemDemo> {
  final FoodItem item = FoodItem.empty();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: WidgetPreview(
              widget: FoodItemView(foodItem: item),
              code: 'FoodItemView(foodItem: item)',
            ),
          )
        )
      ]
    );
  }
}