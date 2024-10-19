import 'package:banana_query_core/nutrients/nutrient_names.dart';
import 'package:banana_query_core/nutrients/nutrient_units.dart';
import 'package:flutter/material.dart';

import '../fields/nutrient_field.dart';

class MineralsNutrientForm extends StatelessWidget {
  const MineralsNutrientForm(
      {super.key, this.fieldPadding = const EdgeInsets.all(8.0)});

  final EdgeInsets fieldPadding;

  @override
  Widget build(BuildContext context) {
    // NutrientN
    return Wrap(
        children: NutrientNames.minerals
            .map((e) => Container(
                  constraints: const BoxConstraints(
                    minWidth: 75,
                    maxWidth: 300,
                  ),
                  padding: fieldPadding,
                  child: NutrientField(
                    name: e,
                    units: NutrientUnits.typicalMeasuringUnits[e] ?? "",
                  ),
                ))
            .toList());
  }
}
