import 'package:banana_query_core/nutrients/macro/carbs/complex/polysaccharides/polysaccharides.dart';

class Starch extends Polysaccharides {
  static const nutrientType = 'Starch';
  static const measuringUnits = 'g';

  Starch({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Starch.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}