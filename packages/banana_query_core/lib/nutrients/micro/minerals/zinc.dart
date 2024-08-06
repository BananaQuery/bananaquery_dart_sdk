import 'mineral.dart';

class Zinc extends Mineral {
  static const nutrientType = 'Zinc, Zn';
  static const measuringUnits = 'mg';

  Zinc({required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  Zinc.fromJson(Map<String, dynamic> json) :
      assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}