import 'package:banana_query_core/nutrients/nutrient.dart';

class Cholesterol extends Nutrient {
  static const nutrientType = 'Cholesterol';
  static const measuringUnits = 'mg';

  Cholesterol({ required super.amount })
    : super(type: nutrientType, units: measuringUnits);

  Cholesterol.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}