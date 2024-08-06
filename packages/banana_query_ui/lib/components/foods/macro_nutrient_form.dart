import 'package:banana_query_core/nutrients/nutrient_names.dart';
import 'package:banana_query_core/nutrients/nutrient_units.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../fields/nutrient_field.dart';

class MacroNutrientForm extends StatelessWidget {
  const MacroNutrientForm({super.key, this.fieldPadding = const EdgeInsets.all(8.0)});

  final EdgeInsets fieldPadding;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: NutrientNames.macros.map((e) => Container(
          constraints: BoxConstraints(
            minWidth: 75,
            maxWidth: 300,
          ),
          padding: fieldPadding,
          child: NutrientField(
            name: e,
            units: NutrientUnits.typicalMeasuringUnits[e] ?? "",
          ),
        )).toList()
    );
  }
}