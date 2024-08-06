import 'package:banana_query_core/nutrients/macro/carbs/carbohydrate.dart';

class CarbohydrateDifference extends Carbohydrate {
  static const nutrientType = 'Carbohydrate, by difference';
  static const measuringUnits = 'g';

  CarbohydrateDifference({ required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  CarbohydrateDifference.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
