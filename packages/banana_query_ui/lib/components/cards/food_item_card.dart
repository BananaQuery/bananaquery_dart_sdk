import 'dart:ui';

import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/item/food_item.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/macro_totals.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_ui/components/fields/portions_dropdown_field.dart';
import 'package:flutter/material.dart';

typedef OnSelectFoodPortion = Function(FoodPortion);

class FoodItemCard extends Card {
  FoodItemCard(
      {super.key,
      required this.foodItem,
      quantity,
      selectedPortion,
      this.onTap,
      this.onSelectPortion,
      this.isSelected = false,
      super.color,
      super.shadowColor,
      super.surfaceTintColor,
      super.elevation,
      super.shape,
      super.borderOnForeground,
      super.margin,
      super.clipBehavior,
      super.child,
      super.semanticContainer})
      : quantity = quantity ?? 1.0,
        selectedPortion = selectedPortion ?? foodItem.portions.first;

  final FoodItem foodItem;
  final double quantity;
  final FoodPortion selectedPortion;
  final VoidCallback? onTap;
  final OnSelectFoodPortion? onSelectPortion;
  final bool isSelected;

  PortionedFood get portionedFood {
    return PortionedFood(
        portion: selectedPortion, item: foodItem, quantity: quantity);
  }

  @override
  Widget build(BuildContext context) {
    final MacroTotals macros =
        NutrientTotalsCalculator.getMacros([portionedFood]);
    final TextStyle valueStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(fontWeight: FontWeight.w600);
    final TextStyle labelStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(.8));

    return Card(
      color: super.color,
      shadowColor: super.shadowColor,
      surfaceTintColor: super.surfaceTintColor,
      elevation: super.elevation,
      shape: super.shape,
      borderOnForeground: super.borderOnForeground,
      margin: super.margin,
      clipBehavior: super.clipBehavior,
      semanticContainer: super.semanticContainer,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: SelectableText(
                      foodItem.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 30)),
                  SizedBox(
                    width: 50,
                    child: TextFormField(
                      initialValue: quantity.toString(),
                      decoration: const InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) {
                        final double newValue = double.tryParse(value) ?? 1.0;
                        onSelectPortion?.call(selectedPortion);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200.0,
                    child: PortionsDropdownField(
                        isDense: true,
                        onChanged: (p) {},
                        portions: foodItem.portions,
                        initialValue: selectedPortion),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 40.0)),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Calories', style: labelStyle),
                      Text(
                        '${macros.kilocalories.amount.round()} ${macros.kilocalories.units}',
                        style: valueStyle,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(right: 40.0)),
                  Column(
                    children: [
                      Text('Carbs', style: labelStyle),
                      Text(
                        '${macros.carbs.amount.toStringAsPrecision(2)} ${macros.carbs.units}',
                        style: valueStyle,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(right: 40.0)),
                  Column(
                    children: [
                      Text('Protein', style: labelStyle),
                      Text(
                        '${macros.proteins.amount.toStringAsPrecision(2)} ${macros.proteins.units}',
                        style: valueStyle,
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.only(right: 40.0)),
                  Column(
                    children: [
                      Text('Fat', style: labelStyle),
                      Text(
                        '${macros.fats.amount.toStringAsPrecision(2)} ${macros.fats.units}',
                        style: valueStyle,
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 10.0)),
            ],
          ),
        ),
      ),
    );
  }
}
