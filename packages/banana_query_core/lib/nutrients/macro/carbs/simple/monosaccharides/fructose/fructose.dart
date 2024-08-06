import 'package:banana_query_core/nutrients/macro/carbs/simple/monosaccharides/monosaccharide.dart';

class Fructose extends Monosaccharide {
  static const nutrientType = 'Fructose';
  static const measuringUnits = 'g';

  Fructose({ required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  Fructose.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}