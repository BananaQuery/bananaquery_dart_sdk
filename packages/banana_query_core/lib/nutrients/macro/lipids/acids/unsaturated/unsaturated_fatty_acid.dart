import 'package:banana_query_core/nutrients/macro/lipids/acids/fatty_acid.dart';

abstract class UnsaturatedFattyAcid extends FattyAcid {
  UnsaturatedFattyAcid({required super.amount, required super.units, required super.type});
  UnsaturatedFattyAcid.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}