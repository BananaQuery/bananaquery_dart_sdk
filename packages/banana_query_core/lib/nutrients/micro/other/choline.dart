import 'package:banana_query_core/nutrients/micro/micro_nutrient.dart';

class Choline extends MicroNutrient {
  static const nutrientType = 'Choline, total';
  static const measuringUnits = 'mg';

  Choline({required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  Choline.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
