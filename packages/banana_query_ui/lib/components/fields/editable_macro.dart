import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/factories/nutrient/nutrient_factory.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef OnMacroChange = Function(Nutrient);

class EditableMacro extends StatelessWidget {
  const EditableMacro(
      {super.key, required this.macro, required this.nutrient, required this.nutrientType, this.onChange});

  final String macro;
  final Nutrient? nutrient;
  final String nutrientType;
  final OnMacroChange? onChange;

  NutrientFactory get nutrientFactory => NutrientFactory.standard();
  Map<String, String> get nutrientUnits => NutrientUnits.typicalMeasuringUnits;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 75,
          child: TextFormField(
            key: ValueKey('$macro-$nutrient'),
            enabled: onChange != null,
            initialValue: nutrient?.amount.toStringAsFixed(1),
            style: Theme.of(context).textTheme.headlineMedium,
            inputFormatters: [
              // This formatter allows only one decimal point
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
            ],
            decoration: InputDecoration(
              suffix: Text(nutrientUnits[nutrientType] ?? ''),
            ),
            onChanged: (newValue) {
              onChange?.call(nutrientFactory.fromJson({
                'amount': double.parse(newValue),
                'type': nutrientType,
              }));
            },
          ),
        ),
        Text(macro, style: Theme.of(context).textTheme.titleMedium)
      ],
    );
  }
}
