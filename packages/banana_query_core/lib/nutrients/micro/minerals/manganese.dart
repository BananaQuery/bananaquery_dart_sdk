import 'mineral.dart';

class Manganese extends Mineral {
  static const nutrientType = 'Manganese, Mn';
  static const measuringUnits = 'mg';

  Manganese({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Manganese.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}