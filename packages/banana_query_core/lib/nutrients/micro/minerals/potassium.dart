import 'mineral.dart';

class Potassium extends Mineral {
  static const nutrientType = 'Potassium, K';
  static const measuringUnits = 'mg';

  Potassium({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Potassium.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}
