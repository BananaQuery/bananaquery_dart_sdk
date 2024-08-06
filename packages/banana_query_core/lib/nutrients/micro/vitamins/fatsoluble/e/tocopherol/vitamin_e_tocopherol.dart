import '../vitamin_e.dart';

abstract class VitaminETocopherol extends VitaminE {
  VitaminETocopherol({required super.type, required super.amount, required super.units});
  VitaminETocopherol.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}