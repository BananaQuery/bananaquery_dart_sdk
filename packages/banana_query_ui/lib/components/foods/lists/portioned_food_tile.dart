import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:flutter/material.dart';

class PortionedFoodTile extends StatelessWidget {
  PortionedFoodTile(
      {super.key,
      required this.portionedFood,
      this.leading,
      this.trailing,
      this.onTap});

  PortionedFood portionedFood;
  Widget? leading;
  Widget? trailing;
  VoidCallback? onTap;

  final int quantity = 1;

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = Theme.of(context).textTheme.titleSmall!;
    TextStyle labelStyle = Theme.of(context).textTheme.labelSmall!;
    TextStyle macroNutrientStyle =
        Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey);

    return ListTile(
      leading: leading,
      trailing: trailing,
      dense: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(portionedFood.item.name, style: titleStyle),
          Row(
            children: [
              Text("$quantity ${portionedFood.portion.title}",
                  style: labelStyle),
              const Padding(padding: EdgeInsets.only(left: 15)),
              Text("50 kcal", style: labelStyle),
            ],
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "100g carbs",
                style: macroNutrientStyle,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "100g carbs",
                style: macroNutrientStyle,
              )),
          Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                "100g carbs",
                style: macroNutrientStyle,
              )),
        ],
      ),
    );
  }
}
