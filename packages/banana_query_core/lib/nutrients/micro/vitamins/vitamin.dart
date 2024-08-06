import '../micro_nutrient.dart';

abstract class Vitamin extends MicroNutrient {
  Vitamin({required super.type, required super.amount, required super.units});

  Vitamin.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}