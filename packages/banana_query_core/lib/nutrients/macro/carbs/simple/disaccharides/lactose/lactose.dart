import 'package:banana_query_core/nutrients/macro/carbs/simple/disaccharides/disaccharides.dart';

class Lactose extends Disaccharide {
  static const nutrientType = 'Lactose';
  static const measuringUnits = 'g';

  Lactose({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Lactose.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}