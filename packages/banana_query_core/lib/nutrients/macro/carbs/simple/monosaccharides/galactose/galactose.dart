import 'package:banana_query_core/nutrients/macro/carbs/simple/monosaccharides/monosaccharide.dart';

class Galactose extends Monosaccharide {
  static const nutrientType = 'Galactose';
  static const measuringUnits = 'g';

  Galactose({required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  Galactose.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}