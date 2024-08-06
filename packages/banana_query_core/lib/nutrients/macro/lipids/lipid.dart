import 'package:banana_query_core/nutrients/macro/macro_nutrient.dart';

abstract class Lipid extends MacroNutrient {
  Lipid({required super.amount, required super.units, required super.type});
  Lipid.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}