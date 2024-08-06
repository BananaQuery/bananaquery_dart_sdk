import 'mineral.dart';

class Copper extends Mineral {
  static const nutrientType = 'Copper, Cu';
  static const measuringUnits = 'mg';

  Copper({required super.amount}) :
        super(type: nutrientType, units: measuringUnits);

  Copper.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}