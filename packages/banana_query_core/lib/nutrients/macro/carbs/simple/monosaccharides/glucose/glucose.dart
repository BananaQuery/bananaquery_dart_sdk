import 'package:banana_query_core/nutrients/macro/carbs/simple/monosaccharides/monosaccharide.dart';

class Glucose extends Monosaccharide {
  static const nutrientType = 'Glucose';
  static const measuringUnits = 'g';

  Glucose({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Glucose.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}