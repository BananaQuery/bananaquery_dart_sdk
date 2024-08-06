import '../carbohydrate.dart';

abstract class ComplexCarbohydrate extends Carbohydrate {
  ComplexCarbohydrate({required super.amount, required super.units, required super.type});
  ComplexCarbohydrate.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}