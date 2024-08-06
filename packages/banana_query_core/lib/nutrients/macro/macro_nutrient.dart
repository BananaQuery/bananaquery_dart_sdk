import '../nutrient.dart';

abstract class MacroNutrient extends Nutrient {
  MacroNutrient({required super.amount, required super.units, required super.type});

  MacroNutrient.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
}