import '../nutrient.dart';

abstract class MicroNutrient extends Nutrient {
  MicroNutrient({required super.type, required super.amount, required super.units});
  MicroNutrient.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}