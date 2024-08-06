import 'package:banana_query_core/nutrients/macro/lipids/acids/saturated/saturated_fatty_acid.dart';

class TotalSaturatedFattyAcid extends SaturatedFattyAcid {
  static const nutrientType = 'Fatty acids, total saturated';
  static const measuringUnits = 'g';

  TotalSaturatedFattyAcid({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  TotalSaturatedFattyAcid.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}