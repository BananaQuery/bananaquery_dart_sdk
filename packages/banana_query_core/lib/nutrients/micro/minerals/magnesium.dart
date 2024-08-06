import '../../properties/brain_development.dart';
import 'mineral.dart';

class Magnesium extends Mineral implements BrainDevelopment {
  static const nutrientType = 'Magnesium, Mg';
  static const measuringUnits = 'mg';

  Magnesium({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Magnesium.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}