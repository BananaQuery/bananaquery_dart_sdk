import '../micro_nutrient.dart';

class Betaine extends MicroNutrient {
  static const nutrientType = 'Betaine';
  static const measuringUnits = 'mg';

  Betaine({required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  Betaine.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}