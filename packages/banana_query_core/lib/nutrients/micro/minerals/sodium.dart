import 'mineral.dart';

class Sodium extends Mineral {
  static const nutrientType = 'Sodium, Na';
  static const measuringUnits = 'mg';

  Sodium({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Sodium.fromJson(Map<String, dynamic> json) :
      assert(json['type'] == nutrientType),
      assert(json['units'] == measuringUnits),
      super.fromJson(json);
}