import 'mineral.dart';

class Phosphorus extends Mineral {
  static const nutrientType = 'Phosphorus, P';
  static const measuringUnits = 'mg';

  Phosphorus({required super.amount,})
      : super(type: nutrientType, units: measuringUnits);

  Phosphorus.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}