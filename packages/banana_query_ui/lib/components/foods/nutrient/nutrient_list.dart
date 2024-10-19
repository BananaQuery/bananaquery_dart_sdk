import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/factories/nutrient/nutrient_factory.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:flutter/material.dart';

import 'nutrient_pill.dart';

typedef OnNutrientClick = void Function(Nutrient nutrient);

class NutrientList extends StatelessWidget {
  NutrientList({
    super.key,
    required this.nutrients,
    this.portionWeight = 100.0,
    this.onNutrientClick,
    this.excludedNutrients = const [],
  });

  final double portionWeight;
  final List<Nutrient> nutrients;
  final List<String> excludedNutrients;
  final OnNutrientClick? onNutrientClick;

  final List<String> nutrientNames = NutrientNames.nutrientTypes;

  Widget buildNutrientField(BuildContext context, String nutrientName) {
    String? units = NutrientUnits.typicalMeasuringUnits[nutrientName];
    TextStyle? mediumBody = Theme.of(context).textTheme.bodyMedium;

    List<Nutrient> matching =
        nutrients.where((element) => element.type == nutrientName).toList();
    if (matching.isEmpty) {
      return InkWell(
          onTap: () {
            if (onNutrientClick != null) {
              onNutrientClick?.call(NutrientFactory.standard().fromJson({
                "type": nutrientName,
                "amount": 0.0,
                "units": units,
              }));
            }
          },
          child: NutrientPill(
            title: nutrientName.substring(0, 2),
            value: 0.0,
            units: units ?? "?",
          ));
    }

    final Nutrient nutrient = matching.first;

    Widget? icon;
    if (nutrientName == EnergyNutrient.nutrientType) {
      // icon = Icon(Icons.lighting)
    }

    return InkWell(
        onTap: () {
          if (onNutrientClick != null) {
            onNutrientClick?.call(nutrient);
          }
        },
        child: NutrientPill(
          title: nutrientName.substring(0, 2),
          value: nutrient.amountInGrams(portionWeight),
          units: nutrient.units,
        ));
  }

  Widget buildNutrientSection(
      BuildContext context, List<String> nutrientNames) {
    TextStyle? smallLabelStyle = Theme.of(context).textTheme.labelSmall;

    return Wrap(
      children: nutrientNames.map((String nutrientName) {
        return Container(
            width: 250,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                buildNutrientField(context, nutrientName),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(nutrientName,
                      style:
                          smallLabelStyle!.copyWith(color: Colors.grey[600])),
                )
              ],
            ));
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle? smallBody = Theme.of(context).textTheme.bodySmall;
    TextStyle? mediumBody = Theme.of(context).textTheme.bodyMedium;
    TextStyle? smallLabelStyle = Theme.of(context).textTheme.labelSmall;

    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Macros",
              style: mediumBody!.copyWith(fontWeight: FontWeight.bold)),
        ),
        buildNutrientSection(context, NutrientNames.macros),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Vitamins",
              style: mediumBody.copyWith(fontWeight: FontWeight.bold)),
        ),
        buildNutrientSection(context, NutrientNames.vitamins),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text("Minerals",
              style: mediumBody.copyWith(fontWeight: FontWeight.bold)),
        ),
        buildNutrientSection(context, NutrientNames.minerals),
      ],
    ));
  }
}
