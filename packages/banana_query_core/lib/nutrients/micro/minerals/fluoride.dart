import 'mineral.dart';

class Fluoride extends Mineral {
  static const nutrientType = 'Fluoride, F';
  static const measuringUnits = 'µg';

  Fluoride({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Fluoride.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
