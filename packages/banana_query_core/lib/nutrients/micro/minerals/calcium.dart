import 'mineral.dart';

class Calcium extends Mineral {
  static const nutrientType = 'Calcium, Ca';
  static const measuringUnits = 'mg';

  Calcium({required super.amount}) :
        super(type: nutrientType, units: measuringUnits);

  Calcium.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
