import 'package:banana_query_core/nutrients/macro/lipids/acids/saturated/saturated_fatty_acid.dart';

class SaturatedFatAcid15_0 extends SaturatedFattyAcid {
  static const String nutrientType = "SFA 15:0";
  static const String measuringUnits = "g";

  SaturatedFatAcid15_0({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  SaturatedFatAcid15_0.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}