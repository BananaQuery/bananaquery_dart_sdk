import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/factories/nutrient/nutrient_factory.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:banana_query_localization/nutrient_localizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

typedef OnEditNutrient = Function(Nutrient);

class NutrientTable extends StatelessWidget {
  const NutrientTable({
    super.key,
    required this.values,
    this.title = "",
    this.editable = false,
    this.onEditNutrient,
  });

  final String title;
  final List<Nutrient> values;

  final OnEditNutrient? onEditNutrient;
  final bool editable;

  @override
  Widget build(BuildContext context) {
    List<DataRow> data = NutrientNames.microNutrients.map((nutrientName) {
      double? value;
      String units = NutrientUnits.typicalMeasuringUnits[nutrientName] ?? "?";

      try {
        value =
            values.firstWhere((element) => element.type == nutrientName).amount;
      } catch (e) {
        value = null;
      }

      return DataRow(
        // color: index.isEven
        //     ? MaterialStateProperty.all(Colors.white)
        //     : MaterialStateProperty.all(Colors.black12),
        cells: <DataCell>[
          DataCell(Text(NutrientLocalizer.localize(nutrientName))),
          DataCell(TextFormField(
            key: ValueKey('$nutrientName-$value'),
            enabled: editable,
            initialValue: value?.toStringAsFixed(2) ?? "?",
            decoration: InputDecoration(suffix: Text(units)),
            inputFormatters: [
              // This formatter allows only one decimal point
              FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
            ],
            onChanged: (rawValue) {
              Nutrient newNutrient = NutrientFactory.standard().fromJson({
                "type": nutrientName,
                "amount": double.tryParse(rawValue) ?? 0.0
              });
              onEditNutrient?.call(newNutrient);
            },
          )),
        ],
      );
    }).toList();

    return DataTable(
        dataRowHeight: 35,
        columns: [
          DataColumn(
            label: Expanded(
              child: Text(
                title,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
          DataColumn(
            label: Expanded(
              child: Text(
                S.of(context).amount,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
        rows: data);
  }
}
