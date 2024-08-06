import '../micro_nutrient.dart';

abstract class Mineral extends MicroNutrient {
  Mineral({ required super.type, required super.amount, required super.units });
  Mineral.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}