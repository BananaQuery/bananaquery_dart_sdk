import 'package:example/plan/meal_plan_demo.dart';
import 'package:example/search/search_demo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  List<String> widgets = [
    'Food Item Widget',
    'Meal Plan',
    'Food Search',
    'Nutrient Table'
  ];

  Widget getActiveDemo() {
    if (activeDemo == 0) {
      return const FoodItemDemo();
    }
    if (activeDemo == 1) {
      return const MealPlanDemo();
    }
    if (activeDemo == 2) {
      return const SearchDemo();
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
                destinations: const [
                  NavigationRailDestination(
                    icon: Icon(Icons.favorite_border),
                    selectedIcon: Icon(Icons.fastfood),
                    label: Text('Food Item Widget'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.calendar_month),
                    selectedIcon: Icon(Icons.calendar_month),
                    label: Text('Meal Plan'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.search),
                    selectedIcon: Icon(Icons.search),
                    label: Text('Food Search'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.table_chart),
                    selectedIcon: Icon(Icons.table_chart),
                    label: Text('Nutrient Table'),
                  ),
                ],
            ),
          ),
          Expanded(
              child: getActiveDemo(),
          )
        ],
      )
    );
  }
}