import 'vitamin_d.dart';

class VitaminDD2 extends VitaminD {
  static const nutrientType = 'Vitamin D2 (ergocalciferol)';
  static const measuringUnits = 'µg';

  VitaminDD2({required super.amount, required super.units})
      : super(type: nutrientType);

  VitaminDD2.fromJson(Map<String, dynamic> json) :
      assert(json['type'] == nutrientType),
      assert(json['units'] == measuringUnits),
      super.fromJson(json);
}
