import 'package:banana_query_core/nutrients/macro/lipids/acids/fatty_acid.dart';

abstract class TransFattyAcid extends FattyAcid {
  TransFattyAcid({required super.type, required super.units, required super.amount});
  TransFattyAcid.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}