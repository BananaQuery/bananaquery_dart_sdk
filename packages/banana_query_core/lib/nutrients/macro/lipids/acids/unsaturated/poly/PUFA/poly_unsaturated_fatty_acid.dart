import 'package:banana_query_core/nutrients/macro/lipids/acids/fatty_acid.dart';

abstract class PolyUnsaturatedFattyAcid extends FattyAcid {
  PolyUnsaturatedFattyAcid({required super.amount, required super.units, required super.type});
  PolyUnsaturatedFattyAcid.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}