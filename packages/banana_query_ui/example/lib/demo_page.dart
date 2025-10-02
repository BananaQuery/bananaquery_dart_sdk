import 'package:example/items/recipe_item_demo.dart';
import 'package:example/plan/meal_plan_demo.dart';
// import 'package:example/plan/meal_plan_demo.dart';  // Commented out for web compatibility
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'components/components_demo.dart';
import 'items/food_item_demo.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return DemoPageState();
  }
}

class DemoPageState extends State<DemoPage> {
  int activeDemo = 0;

  List<String> get widgets => kIsWeb ? [
    'Components',
    'Food Item Page',
    'Recipe Page',
  ] : [
    'Components',
    'Food Item Page',
    'Recipe Page',
    'Meal Plan'
  ];

  Widget getActiveDemo() {
    if (activeDemo == 0) {
      return const ComponentsDemo();
    }
    if (activeDemo == 1) {
      return const FoodItemDemo();
    }
    if (activeDemo == 2) {
      return const RecipeItemDemo();
    }
    if (activeDemo == 3) {
      return const MealPlanDemo();
    }
    return const Text('Nutrient Table');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Demo Page'),
        ),
        body: Row(
          children: [
            SizedBox(
              width: 200,
              child: NavigationRail(
                extended: true,
                selectedIndex: activeDemo,
                onDestinationSelected: (int index) {
                  setState(() {
                    activeDemo = index;
                  });
                },
                destinations: kIsWeb ? const [
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Components'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.apple),
                    label: Text('Food Item Page'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.fastfood),
                    label: Text('Recipe Page'),
                  ),
                ] : const [
                  NavigationRailDestination(
                    icon: Icon(Icons.settings),
                    label: Text('Components'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.apple),
                    label: Text('Food Item Page'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.fastfood),
                    label: Text('Recipe Page'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.table_chart),
                    label: Text('Meal Plan Page'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: getActiveDemo(),
            )
          ],
        ));
  }
}
