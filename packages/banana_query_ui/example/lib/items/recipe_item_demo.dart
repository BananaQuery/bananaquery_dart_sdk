import 'package:banana_query_core/foods/recipe/recipe.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b12/vitamin_b12_added.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_ui/components/foods/recipe/recipe_item_view.dart';
import 'package:flutter/material.dart';

class RecipeItemDemo extends StatefulWidget {
  const RecipeItemDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return RecipeItemDemoState();
  }
}

class RecipeItemDemoState extends State<RecipeItemDemo> {
  final Recipe recipe = Recipe.empty();
  final Nutrient vitaminB12 = VitaminB12Added(amount: 1000);

  @override
  void initState() {
    recipe.steps = [
      CookingStep(
          title: "Peel the banana",
          description: "Peel the banana and discard the peel",
          imageUrl:
              "https://images.thdstatic.com/productImages/d7e9836f-e0cc-494d-9667-09842272ec2d/svn/assorted-colors-megachef-mixing-bowls-985111721m-31_600.jpg"),
      CookingStep(
          title: "Slice the banana",
          description: "Slice the banana into 1/2 inch slices",
          videoUrl:
              "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
      CookingStep(
        title: "Eat the banana",
        description: "Eat the banana",
      )
    ];
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
              child: RecipeView(
                recipe: recipe,
              )),
        ]));
  }
}
