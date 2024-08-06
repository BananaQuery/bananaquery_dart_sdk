import '../../vitamin.dart';

abstract class VitaminB extends Vitamin {
  VitaminB({ required super.type, required super.amount, required super.units});
  VitaminB.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}