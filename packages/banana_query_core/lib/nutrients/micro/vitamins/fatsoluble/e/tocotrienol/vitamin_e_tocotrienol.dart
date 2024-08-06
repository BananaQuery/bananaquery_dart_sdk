import '../vitamin_e.dart';

abstract class VitaminETocotrienol extends VitaminE {
  VitaminETocotrienol({required super.type, required super.amount, required super.units});
  VitaminETocotrienol.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}