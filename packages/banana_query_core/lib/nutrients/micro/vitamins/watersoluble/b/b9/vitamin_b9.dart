import '../vitamin_b.dart';

abstract class VitaminB9 extends VitaminB {
  VitaminB9({required super.type, required super.amount, required super.units});
  VitaminB9.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}