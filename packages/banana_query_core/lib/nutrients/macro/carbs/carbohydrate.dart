import '../macro_nutrient.dart';

abstract class Carbohydrate extends MacroNutrient {
  Carbohydrate({required super.amount, required super.units, required super.type});
  Carbohydrate.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}