import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid22_6_n3_dha extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 22:6 n-3 (DHA)';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid22_6_n3_dha({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid22_6_n3_dha.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}