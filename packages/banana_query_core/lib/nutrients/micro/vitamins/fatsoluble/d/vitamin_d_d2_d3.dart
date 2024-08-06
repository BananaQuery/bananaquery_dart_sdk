import 'vitamin_d.dart';

class VitaminDD2D3 extends VitaminD {
  static const nutrientType = 'Vitamin D (D2 + D3)';
  static const measuringUnits = 'µg';
  VitaminDD2D3({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminDD2D3.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
