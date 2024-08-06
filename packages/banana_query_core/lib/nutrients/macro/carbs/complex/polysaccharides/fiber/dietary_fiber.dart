import 'package:banana_query_core/nutrients/macro/carbs/complex/polysaccharides/polysaccharides.dart';

class DietaryFiber extends Polysaccharides {
  static const nutrientType = 'Fiber, total dietary';
  static const measuringUnits = 'g';

  DietaryFiber({ required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  DietaryFiber.fromJson(Map<String, dynamic> json) :
      assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}