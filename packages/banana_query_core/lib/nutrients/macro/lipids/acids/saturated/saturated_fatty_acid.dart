import 'package:banana_query_core/nutrients/macro/lipids/acids/fatty_acid.dart';

abstract class SaturatedFattyAcid extends FattyAcid {
  SaturatedFattyAcid({required super.amount, required super.units, required super.type});
  SaturatedFattyAcid.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}