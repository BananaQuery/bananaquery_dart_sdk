import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:flutter/cupertino.dart';

class FoodGroupCalorieDistribution extends StatefulWidget {
  const FoodGroupCalorieDistribution({Key? key, required this.foods});

  final List<PortionedFood> foods;

  @override
  State<StatefulWidget> createState() {
    return _FoodGroupCalorieDistributionState();
  }
}

class _FoodGroupCalorieDistributionState extends State<FoodGroupCalorieDistribution> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}