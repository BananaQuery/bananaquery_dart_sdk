import 'vitamin_d.dart';

class VitaminDD3 extends VitaminD {
  static const nutrientType = 'Vitamin D3 (cholecalciferol)';
  static const measuringUnits = 'µg';
  VitaminDD3({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminDD3.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
