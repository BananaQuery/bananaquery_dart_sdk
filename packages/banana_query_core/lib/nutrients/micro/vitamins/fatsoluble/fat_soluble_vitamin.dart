import '../vitamin.dart';

abstract class FatSolubleVitamin extends Vitamin {
  FatSolubleVitamin({required super.type, required super.amount, required super.units});
  FatSolubleVitamin.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}