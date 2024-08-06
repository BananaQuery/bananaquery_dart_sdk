import '../fat_soluble_vitamin.dart';

abstract class VitaminA extends FatSolubleVitamin {
  VitaminA({required super.type, required super.amount, required super.units});
  VitaminA.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}