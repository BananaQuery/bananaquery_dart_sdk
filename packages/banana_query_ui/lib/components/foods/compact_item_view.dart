import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/macro_totals.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_core/nutrients/macro/carbs/carbohydrate_difference.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:banana_query_core/nutrients/macro/lipids/total/total_lipids.dart';
import 'package:banana_query_core/nutrients/macro/proteins/total_protein.dart';
import 'package:banana_query_core/nutrients/micro/minerals/mineral.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/vitamin.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';

import '../fields/editable_macro.dart';
import '../fields/portions_dropdown_field.dart';
import '../plan/viewer/information/micro_nutrient_information.dart';

typedef TitleBuilder = Widget Function(
    BuildContext context, PortionedFood quantizedItem);
typedef OnChange = Function(PortionedFood);

class CompactFoodItemtView extends StatefulWidget {
  const CompactFoodItemtView({
    super.key,
    required this.foodItem,
    this.title,
    this.padding,
  });

  final Widget? title;
  final PortionedFood foodItem;
  final EdgeInsets? padding;

  @override
  State<StatefulWidget> createState() {
    return CompactFoodItemtViewState();
  }
}

class CompactFoodItemtViewState extends State<CompactFoodItemtView>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  late PortionedFood foodItem;
  Widget? get title => widget.title;
  EdgeInsets? get padding => widget.padding;
  MacroTotals? macroTotals;

  @override
  void initState() {
    /// IMPORTANT: We need to make a copy of the food item we are editing so that
    /// changes in this class don't carry over to the caller.
    foodItem = PortionedFood.fromJson(widget.foodItem.toJson());

    // ------------ ANIMATION PROPERTIES -------------- //
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );
    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    // ------------- MACRO CALCULATION ---------------- //
    macroTotals = NutrientTotalsCalculator.getMacros([foodItem]);
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
    Color secondaryColor = Theme.of(context).colorScheme.secondary;
    Color onSecondary = Theme.of(context).colorScheme.onSecondary;
    Color surface = Theme.of(context).colorScheme.surface;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          height: 600,
          width: 400,
          color: surface,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              title ??
                  Container(
                    height: 55,
                    color: secondaryColor,
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            foodItem.item.name,
                            style: TextStyle(color: onSecondary),
                            overflow: TextOverflow.ellipsis,
                          ),
                        )
                      ],
                    ),
                  ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
                child: PortionsDropdownField(portions: foodItem.item.portions),
              ),
              Expanded(
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        SizedBox(
                          width: 400,
                          child: Column(
                            children: [
                              const Padding(
                                  padding: EdgeInsets.only(top: 20.0)),
                              Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 120,
                                      width: 170,
                                      child: EditableMacro(
                                        macro: S.of(context).calories,
                                        nutrient: macroTotals?.kilocalories,
                                        nutrientType:
                                            EnergyNutrient.nutrientType,
                                      )),
                                  SizedBox(
                                      height: 120,
                                      width: 150,
                                      child: EditableMacro(
                                        macro: S.of(context).carbohydrates,
                                        nutrient: macroTotals?.carbs,
                                        nutrientType:
                                            CarbohydrateDifference.nutrientType,
                                      )),
                                  SizedBox(
                                      height: 120,
                                      width: 150,
                                      child: EditableMacro(
                                        macro: S.of(context).proteins,
                                        nutrient: macroTotals?.proteins,
                                        nutrientType: TotalProtein.nutrientType,
                                      )),
                                  SizedBox(
                                      height: 120,
                                      width: 150,
                                      child: EditableMacro(
                                        macro: S.of(context).fats,
                                        nutrient: macroTotals?.proteins,
                                        nutrientType: TotalLipids.nutrientType,
                                      )),
                                ],
                              ),
                              SizedBox(
                                width: 300,
                                child: NutrientTable(
                                  title: S.of(context).minerals,
                                  values: NutrientTotalsCalculator
                                      .getNutrientTotals<Mineral>([foodItem]),
                                  editable: false,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(bottom: 10),
                              ),
                              SizedBox(
                                width: 300,
                                child: NutrientTable(
                                  title: S.of(context).vitamins,
                                  values: NutrientTotalsCalculator
                                      .getNutrientTotals<Vitamin>([foodItem]),
                                  editable: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        );
      },
    );
  }
}
