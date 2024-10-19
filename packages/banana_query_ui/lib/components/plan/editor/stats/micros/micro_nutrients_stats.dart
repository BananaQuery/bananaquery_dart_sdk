import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'micro_nutrient_table.dart';

class MicroNutrientStats extends StatefulWidget {
  const MicroNutrientStats({
    super.key,
    required this.foods,
  });

  final List<PortionedFood> foods;

  @override
  _MicroNutrientStatsState createState() => _MicroNutrientStatsState();
}

class _MicroNutrientStatsState extends State<MicroNutrientStats> {
  // --------------------------- PROPS ------------------------------------- //
  List<PortionedFood> get foods => widget.foods;

  // --------------------------- STATE ------------------------------------- //
  int get rowCount => NutrientTotalsCalculator.vitamins.length;
  double rowHeight = 30.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: ListView(
          children: [
            const Padding(padding: EdgeInsets.only(top: 15.0)),
            Container(
              color: Theme.of(context).colorScheme.primary.withOpacity(.5),
              padding:
                  const EdgeInsets.only(left: 10.0, top: 30.0, bottom: 10.0),
              child: SelectableText(S.of(context).vitamins,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            MicroNutrientTable(
              foods: foods,
              nutrients: NutrientTotalsCalculator.vitamins,
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0)),
            Container(
              color: Theme.of(context).colorScheme.primary.withOpacity(.5),
              padding:
                  const EdgeInsets.only(left: 10.0, top: 30.0, bottom: 10.0),
              child: SelectableText(S.of(context).minerals,
                  style: Theme.of(context).textTheme.titleLarge!),
            ),
            MicroNutrientTable(
              foods: foods,
              nutrients: NutrientTotalsCalculator.minerals,
            ),
          ],
        )),
      ],
    );
  }
}
