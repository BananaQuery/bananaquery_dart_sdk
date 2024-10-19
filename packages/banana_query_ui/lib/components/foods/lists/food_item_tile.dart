import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:flutter/material.dart';

class FoodItemTile extends StatelessWidget {
  FoodItemTile(
      {super.key,
      required this.foodItem,
      this.showMacroNutrients = false,
      this.leading,
      this.trailing,
      this.onTap,
      this.showPortions});

  NutritionalEntity foodItem;
  final bool showMacroNutrients;
  final bool? showPortions;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;

  FoodPortion get portion =>
      foodItem.portions.firstOrNull ?? const FoodPortion.gramDefault();
  PortionedFood get portionedFood =>
      PortionedFood(item: foodItem, portion: portion, quantity: 1);

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
          SelectableText(foodItem.name, style: titleStyle),
          // Row(
          //   children: [
          //     Text("$quantity ${foodItem.portions.first.title}", style: labelStyle),
          //     const Padding(padding: EdgeInsets.only(left: 15)),
          //     Text("50 kcal", style: labelStyle),
          //   ],
          // ),
        ],
      ),
      subtitle: showMacroNutrients
          ? Row(
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
            )
          : null,
    );
  }
}
