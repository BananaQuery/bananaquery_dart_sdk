import '../../vitamin.dart';

abstract class VitaminK extends Vitamin {
  VitaminK({required super.type, required super.amount, required super.units});
  VitaminK.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}