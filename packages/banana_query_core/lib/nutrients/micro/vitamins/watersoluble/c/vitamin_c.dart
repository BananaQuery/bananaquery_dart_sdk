import '../../vitamin.dart';

abstract class VitaminC extends Vitamin {
  VitaminC({required super.type, required super.amount, required super.units});
  VitaminC.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}