import 'package:banana_query_core/nutrients/macro/lipids/acids/fatty_acid.dart';

abstract class MonoUnsaturatedFattyAcid extends FattyAcid {
  MonoUnsaturatedFattyAcid({required super.amount, required super.units, required super.type});
  MonoUnsaturatedFattyAcid.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}