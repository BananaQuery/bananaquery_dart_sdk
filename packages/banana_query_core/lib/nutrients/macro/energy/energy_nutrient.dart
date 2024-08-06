import 'package:banana_query_core/nutrients/macro/macro_nutrient.dart';

class EnergyNutrient extends MacroNutrient {
  static const nutrientType = 'Energy';
  static const measuringUnits = 'kcal';

  EnergyNutrient({ required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  EnergyNutrient.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}