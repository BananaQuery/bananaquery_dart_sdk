import 'vitamin_k.dart';

abstract class VitaminK2 extends VitaminK {
  VitaminK2({required super.type, required super.amount, required super.units});
  VitaminK2.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}