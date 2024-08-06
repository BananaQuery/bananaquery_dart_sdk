import 'vitamin_k.dart';

abstract class VitaminK1 extends VitaminK {
  VitaminK1({required super.type, required super.amount, required super.units});
  VitaminK1.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}