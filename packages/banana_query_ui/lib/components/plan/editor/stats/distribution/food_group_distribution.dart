import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_localization/food/groups/food_group_localizer.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodGroupDistribution extends StatefulWidget {
  const FoodGroupDistribution({super.key, required this.foods});

  final List<PortionedFood> foods;

  @override
  State<StatefulWidget> createState() {
    return FoodGroupDistributionState();
  }
}

class FoodGroupDistributionState extends State<FoodGroupDistribution> {
  List<PortionedFood> get foods => widget.foods;
  int touchedIndex = -1;

  Map<String, double> foodGroupDistribution = {};
  double totalCalories = 0.0;

  @override
  void initState() {
    computeValues();
    super.initState();
  }

  @override
  void didUpdateWidget(FoodGroupDistribution oldWidget) {
    if (oldWidget.foods != foods) {
      computeValues();
    }
    super.didUpdateWidget(oldWidget);
  }

  void computeValues() {
    for (var element in foods) {
      final String foodGroup = element.item.foodCategory;
      foodGroupDistribution.update(
          foodGroup, (value) => (value + (element.getCalories.amount ?? 0.0)),
          ifAbsent: () => element.getCalories.amount ?? 0.0);
    }

    totalCalories = foodGroupDistribution.values
        .fold(0.0, (previousValue, element) => previousValue + element);
  }

  Color getFoodGroupColor(String foodGroup) {
    switch (foodGroup) {
      case 'baked products':
        {
          return Colors.red;
        }
      case 'snacks':
        {
          return Colors.green;
        }
      case 'sweets':
        {
          return Colors.yellow;
        }
      case 'vegetables and vegetable products':
        {
          return Colors.blue;
        }
      case 'american indian/alaska native foods':
        {
          return Colors.purple;
        }
      case 'restaurant foods':
        {
          return Colors.orange;
        }
      case 'beverages':
        {
          return Colors.grey;
        }
      case 'fats and oils':
        {
          return Colors.pink;
        }
      case 'sausages and luncheon meats':
        {
          return Colors.teal;
        }
      case 'dairy and egg products':
        {
          return Colors.cyan;
        }
      case 'baby foods':
        {
          return Colors.brown;
        }
      case 'poultry products':
        {
          return Colors.blueGrey;
        }
      case 'pork products':
        {
          return Colors.deepOrange;
        }
      case 'breakfast cereals':
        {
          return Colors.deepPurple;
        }
      case 'legumes and legume products':
        {
          return Colors.indigo;
        }
      case 'finfish and shellfish products':
        {
          return Colors.lime;
        }
      case 'fruits and fruit juices':
        {
          return Colors.lightGreen;
        }
      case 'cereal grains and pasta':
        {
          return Colors.amber;
        }
      case 'nut and seed products':
        {
          return Colors.lightBlue;
        }
      case 'beef products':
        {
          return Colors.limeAccent;
        }
      case 'meals, entrees, and side dishes':
        {
          return Colors.purpleAccent;
        }
      case 'fast foods':
        {
          return Colors.orangeAccent;
        }
      case 'spices and herbs':
        {
          return Colors.pinkAccent;
        }
      case 'soups, sauces, and gravies':
        {
          return Colors.tealAccent;
        }
      case 'lamb, veal, and game products':
        {
          return Colors.cyanAccent;
        }
    }
    return Colors.black45;
  }

  @override
  Widget build(BuildContext context) {
    List<PieChartSectionData> chartSections = foodGroupDistribution.entries
        .map((e) => PieChartSectionData(
              title: "${(e.value / totalCalories * 100).truncate()}%",
              value: e.value,
              color: getFoodGroupColor(e.key),
              titlePositionPercentageOffset: 2.8,
              radius: 15,
            ))
        .toList();

    return SizedBox(
        height: 250,
        width: 500,
        child: Row(
          children: [
            SizedBox(
                width: 170,
                // color: Theme.of(context).colorScheme.primary.withOpacity(.5),
                //   alignment: Alignment.topLeft,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: Text(S.of(context).foodGroupDistribution,
                          textAlign: TextAlign.center),
                    ),
                    PieChart(PieChartData(
                        centerSpaceRadius: 60.0,
                        pieTouchData: PieTouchData(
                          touchCallback:
                              (FlTouchEvent event, pieTouchResponse) {
                            setState(() {
                              if (!event.isInterestedForInteractions ||
                                  pieTouchResponse == null ||
                                  pieTouchResponse.touchedSection == null) {
                                touchedIndex = -1;
                                return;
                              }
                              touchedIndex = pieTouchResponse
                                  .touchedSection!.touchedSectionIndex;
                            });
                          },
                        ),
                        sections: [
                          if (chartSections.isEmpty)
                            PieChartSectionData(
                              title: "",
                              value: 1,
                              color: Colors.grey,
                              titlePositionPercentageOffset: 2.8,
                              radius: 15,
                            )
                          else
                            ...chartSections
                        ]))
                  ],
                )),
            Expanded(
              child: ListView.builder(
                itemCount: foodGroupDistribution.length,
                itemBuilder: (context, index) {
                  final String foodGroup =
                      foodGroupDistribution.keys.elementAt(index);
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            color: getFoodGroupColor(foodGroup),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            FoodGroupLocalizer.localize(foodGroup),
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ));
  }
}
