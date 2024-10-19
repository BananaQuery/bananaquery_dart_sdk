import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/item/food_item.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/foods/recipe/recipe.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_ui/components/foods/lists/food_item_list.dart';
import 'package:banana_query_ui/components/foods/lists/portioned_food_list.dart';
import 'package:banana_query_ui/components/foods/nutrient/nutrient_pill.dart';
import 'package:banana_query_ui/components/foods/recipe/instructions_timeline.dart';
import 'package:flutter/material.dart';

class ComponentsDemo extends StatefulWidget {
  const ComponentsDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return ComponentsDemoState();
  }
}

class ComponentsDemoState extends State<ComponentsDemo> {
  late FoodItem foodItem;
  List<int> selectedFoodItems = [];

  @override
  void initState() {
    foodItem = FoodItem.empty().copyWith(name: "Banana") as FoodItem;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle mediumBody = Theme.of(context).textTheme.titleMedium!;

    return Scaffold(
        body: ListView(
      children: [
        Text(
          "Nutrient Pill",
          style: mediumBody,
        ),
        const Padding(padding: EdgeInsets.only(top: 20)),
        Row(
          children: [
            const NutrientPill(
              value: 10,
              units: "mg",
              title: "Ca",
            ),
            const Padding(padding: EdgeInsets.only(left: 15)),
            const NutrientPill(
              value: 100,
              units: "g",
              title: "Protein",
            ),
            const Padding(padding: EdgeInsets.only(left: 15)),
            NutrientPill(
              titleBackgroundColor: Colors.blue.shade50,
              valueBackgroundColor: Colors.blue.shade300,
              valueStyle: const TextStyle(color: Colors.black, fontSize: 10),
              value: 100,
              units: "g",
              title: "Carbs",
              onClick: () {
                showAboutDialog(context: context);
              },
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: Text("Food Item List", style: mediumBody),
        ),
        Row(
          children: [
            SizedBox(
              width: 500,
              height: 300,
              child: FoodItemList(
                selectable: true,
                selected: selectedFoodItems,
                foodItems: List.generate(10, (index) {
                  return FoodItem.empty().copyWith(name: "Food Item $index")
                      as FoodItem;
                }),
                onSelect:
                    (NutritionalEntity foodItem, int index, bool? isSelected) {
                  setState(() {
                    if (isSelected == true) {
                      selectedFoodItems.add(index);
                    } else {
                      selectedFoodItems.remove(index);
                    }
                  });
                },
              ),
            ),
            SizedBox(
              width: 500,
              height: 300,
              child: PortionedFoodItemList(
                selectable: true,
                selected: selectedFoodItems,
                foodItems: List.generate(10, (index) {
                  FoodItem item = FoodItem.empty()
                      .copyWith(name: "Food Item $index") as FoodItem;
                  FoodPortion portion = item.portions.first;
                  return PortionedFood(
                      item: item, quantity: 1, portion: portion);
                }),
                onSelect:
                    (NutritionalEntity foodItem, int index, bool? isSelected) {
                  setState(() {
                    if (isSelected == true) {
                      selectedFoodItems.add(index);
                    } else {
                      selectedFoodItems.remove(index);
                    }
                  });
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: Text("Cooking Instructions Stepper", style: mediumBody),
        ),
        SizedBox(
            width: 500,
            height: 300,
            child: CookingInstructionsStepper(instructions: [
              CookingStep(title: "Mix all dry ingredients with 2 eggs"),
              CookingStep(title: "Mix the batter until smooth"),
              CookingStep(title: "Add vanilla extract, cinnamon and mix"),
              CookingStep(title: "Cook in a preheated pan for 2 minutes"),
            ]))
      ],
    ));
  }
}
