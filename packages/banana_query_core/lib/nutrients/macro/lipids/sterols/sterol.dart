import 'package:banana_query_core/nutrients/macro/macro_nutrient.dart';

abstract class Sterol extends MacroNutrient {
  Sterol({required String type, required String units, required double amount})
      : super(type: type, units: units, amount: amount);

  Sterol.fromJson(Map<String, dynamic> json)
      : assert(json['type'] != null),
        assert(json['units'] != null),
        super.fromJson(json);
}