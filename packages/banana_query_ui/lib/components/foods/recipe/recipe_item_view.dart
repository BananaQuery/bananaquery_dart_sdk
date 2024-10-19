import 'package:banana_query_core/foods/recipe/recipe.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_core/portions/food_portion.dart';
import 'package:banana_query_ui/components/foods/nutrient/nutrient_list.dart';
import 'package:banana_query_ui/components/foods/recipe/instructions_timeline.dart';
import 'package:flutter/material.dart';

class RecipeView extends StatefulWidget {
  const RecipeView({super.key, required this.recipe  });

  final Recipe recipe;

  @override
  RecipeViewState createState() => RecipeViewState();
}

class RecipeViewState extends State<RecipeView> {

  Recipe get recipe => widget.recipe;

  late FoodPortion selectedPortion;
  double quantity = 1;

  @override
  void initState() {
    selectedPortion = recipe.portions.isEmpty ? const FoodPortion.gramDefault() : recipe.portions.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? titleStyle = Theme.of(context).textTheme.titleMedium;
    TextStyle? smallBody = Theme.of(context).textTheme.bodySmall;
    TextStyle? labelSmall = Theme.of(context).textTheme.labelSmall?.copyWith(color: Colors.grey[600]);

    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        child:DefaultTabController(
          length: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10, left: 6),
                  child: Row(
                    children: [
                      SelectableText(
                        recipe.name.isEmpty ? "Unnamed Food Item" : recipe.name,
                        style: recipe.name.isEmpty ? titleStyle!.copyWith(color: Colors.grey[600]) : titleStyle,
                      ),
                      TextButton.icon(onPressed: () {}, label: Text("edit", style: smallBody))
                    ],
                  )
              ),
              Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 12)),
                  SelectableText(
                    "$quantity ${selectedPortion.title}",
                    style: labelSmall,
                  ),
                  const Padding(padding: EdgeInsets.only(left: 30)),
                  TextButton.icon(onPressed: () {}, label: Text("change", style: smallBody))
                ],
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              const TabBar(
                  tabs: [
                    Tab(text: "Instructions"),
                    Tab(text: 'Nutrients'),
                    Tab(text: 'Portions'),
                  ]
              ),
              const Padding(padding: EdgeInsets.only(bottom: 20)),
              Expanded(
                  child: TabBarView(
                      children: [
                        LayoutBuilder(
                            builder: (context, constraints) {
                              return SizedBox(
                                height: 200,
                                width: constraints.maxWidth,
                                child: CookingInstructionsStepper(
                                  instructions: recipe.steps,
                                ),
                              );
                            }
                        ),
                        NutrientList(
                          nutrients: recipe.nutrients,
                          onNutrientClick: (Nutrient n) {
                            showAboutDialog(context: context);
                          },
                        ),
                        NutrientList(
                          nutrients: recipe.nutrients,
                          onNutrientClick: (Nutrient n) {
                            showAboutDialog(context: context);
                          },
                        ),
                      ]
                  )
              )
            ],
          ),
        )
      ),
    );
  }
}