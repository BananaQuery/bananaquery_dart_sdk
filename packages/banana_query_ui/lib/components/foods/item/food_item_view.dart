import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/vitamin_a_rae.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/d/vitamin_d_d2_d3.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_alpha_tocotrienol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/k/vitamin_k1_phylloquinone.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b12/vitamin_b_12.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b2/riboflavin.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b3/niacin.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b5/pantothenic_acid.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b6/vitamin_b6.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b9/folate_total.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/thiamin/thiamin.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/c/vitamin_c_total_ascorbic_acid.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_ui/components/foods/nutrient/nutrient_list.dart';
import 'package:flutter/material.dart';

import '../nutrient/nutrient_pill.dart';

class FoodItemView extends StatefulWidget {
  FoodItemView(
      {required this.foodItem,
      this.color,
      this.shadowColor,
      this.surfaceTintColor,
      this.elevation,
      this.shape,
      this.borderOnForeground = true,
      this.margin,
      this.clipBehavior,
      this.semanticContainer = true,
      this.editable = false,
      super.key});

  FoodItem foodItem;
  Color? color;
  Color? shadowColor;
  Color? surfaceTintColor;
  double? elevation;
  ShapeBorder? shape;
  bool borderOnForeground;
  EdgeInsets? margin;
  Clip? clipBehavior;
  bool semanticContainer;
  bool editable;

  @override
  State<StatefulWidget> createState() {
    return FoodItemViewState();
  }
}

class FoodItemViewState extends State<FoodItemView> {
  FoodItem get foodItem => widget.foodItem;
  Color? get color => widget.color;
  Color? get shadowColor => widget.shadowColor;
  Color? get surfaceTintColor => widget.surfaceTintColor;
  double? get elevation => widget.elevation;
  ShapeBorder? get shape => widget.shape;
  bool get borderOnForeground => widget.borderOnForeground;
  EdgeInsets? get margin => widget.margin;
  Clip? get clipBehavior => widget.clipBehavior;
  bool get semanticContainer => widget.semanticContainer;
  bool get editable => widget.editable;

  FoodPortion? selectedPortion;
  List<int> minimizedSections = [];

  static final List<String> simpleVitamins = [
    VitaminARAE.nutrientType, // Vitamin A
    VitaminDD2D3.nutrientType, // Vitamin D
    VitaminEAlphaTocotrienol.nutrientType, // Vitamin E
    VitaminK1Phylloquinone.nutrientType, // Vitamin K
    Thiamin.nutrientType, // Vitamin B1
    Riboflavin.nutrientType, // Vitamin B2
    Niacin.nutrientType, // Vitamin B3
    PantothenicAcid.nutrientType, // Vitamin B5
    VitaminB6.nutrientType, // Vitamin B6
    FolateTotal.nutrientType, // Vitamin B9
    VitaminB12.nutrientType, // Vitamin B12
    VitaminCTotalAscorbicAcid.nutrientType // Vitamin C
  ];

  PortionedFood? get portionedFood {
    if (selectedPortion == null) {
      return null;
    }
    return PortionedFood(
        portion: selectedPortion!, item: foodItem, quantity: 1.0);
  }

  EnergyNutrient? get calories {
    try {
      return portionedFood?.getCalories;
    } catch (e) {
      return null;
    }
  }

  @override
  void initState() {
    if (foodItem.portions.isNotEmpty) {
      selectedPortion = widget.foodItem.portions.first;
    }
    super.initState();
  }

  Widget buildPortionField(FoodPortion portion) {
    return Row(
      children: [
        SizedBox(
          width: 200,
          child: TextFormField(
            initialValue: portion.title,
            decoration: const InputDecoration(
              hintText: "Portion Name",
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(left: 20)),
        SizedBox(
          width: 90,
          child: TextFormField(
            initialValue: portion.gramWeight.toString(),
            decoration: const InputDecoration(
              hintText: "?",
              suffixIcon: SizedBox(
                  width: 10,
                  child: Center(
                    child: Text("g"),
                  )),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPortions(BuildContext context) {
    TextStyle? smallBody = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(color: Colors.grey[600]);
    TextStyle? titleSmall = Theme.of(context).textTheme.titleSmall;
    return Row(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...foodItem.portions.map((FoodPortion portion) {
              PortionedFood portionedFood = PortionedFood(
                  portion: portion, item: foodItem, quantity: 1.0);
              double? calories;
              try {
                calories = portionedFood.getCalories.amount;
              } catch (e) {
                calories = null;
              }
              if (editable) {
                return buildPortionField(portion);
              }
              return Container(
                  width: 300,
                  alignment: Alignment.topLeft,
                  child: ListTile(
                    title: Text("${portion.title} (${portion.gramWeight}g)",
                        style: smallBody),
                    onTap: () {
                      setState(() {
                        selectedPortion = portion;
                      });
                    },
                    trailing:
                        Text("${calories ?? "?"} kcal", style: titleSmall),
                  ));
            }),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            if (editable)
              Row(
                children: [
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Portion Name",
                      ),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 20)),
                  SizedBox(
                    width: 90,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "?",
                        suffixIcon: SizedBox(
                            width: 10,
                            child: Center(
                              child: Text("g"),
                            )),
                      ),
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text("Add"))
                ],
              ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? titleStyle = Theme.of(context).textTheme.titleMedium;
    TextStyle? smallBody = Theme.of(context).textTheme.bodySmall;
    TextStyle? labelSmall = Theme.of(context)
        .textTheme
        .labelSmall
        ?.copyWith(color: Colors.grey[600]);

    return Card(
      color: color,
      shadowColor: shadowColor,
      surfaceTintColor: surfaceTintColor,
      elevation: elevation,
      shape: shape,
      borderOnForeground: borderOnForeground,
      margin: margin,
      clipBehavior: clipBehavior,
      semanticContainer: semanticContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 10, left: 6),
                child: Row(
                  children: [
                    SelectableText(
                      foodItem.name.isEmpty
                          ? "Unnamed Food Item"
                          : foodItem.name,
                      style: foodItem.name.isEmpty
                          ? titleStyle!.copyWith(color: Colors.grey[600])
                          : titleStyle,
                    ),
                    TextButton.icon(
                        onPressed: () {}, label: Text("edit", style: smallBody))
                  ],
                )),
            Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 12)),
                DropdownButton<FoodPortion>(
                  value: selectedPortion,
                  focusColor: Colors.transparent,
                  style: labelSmall,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    size: 14,
                  ),
                  underline: Container(),
                  elevation: 16,
                  onChanged: (FoodPortion? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      selectedPortion = value!;
                    });
                  },
                  items: foodItem.portions
                      .map<DropdownMenuItem<FoodPortion>>((FoodPortion value) {
                    return DropdownMenuItem<FoodPortion>(
                      value: value,
                      child: Text("${value.title} (${value.gramWeight}g)"),
                    );
                  }).toList(),
                ),
                const Padding(padding: EdgeInsets.only(left: 30)),
                SelectableText(
                  "${calories?.amount.toString() ?? '?'} kcal",
                  style: labelSmall,
                )
              ],
            ),
            const DefaultTabController(
              length: 2,
              child: TabBar(tabs: [
                Tab(text: 'Nutrients'),
                Tab(text: 'Portions'),
              ]),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Expanded(
              child: NutrientList(nutrients: foodItem.nutrients),
            )
          ],
        ),
      ),
    );
  }
}
