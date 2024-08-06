import '../fat_soluble_vitamin.dart';

abstract class VitaminD extends FatSolubleVitamin {
  VitaminD({required super.type, required super.amount, required super.units});
  VitaminD.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}