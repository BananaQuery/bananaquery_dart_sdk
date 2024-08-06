import '../nutrient.dart';

abstract class InorganicResidue extends Nutrient {
  InorganicResidue({required super.amount, required super.units, required super.type});

  InorganicResidue.fromJson(Map<String, dynamic> json) :super.fromJson(json);
}