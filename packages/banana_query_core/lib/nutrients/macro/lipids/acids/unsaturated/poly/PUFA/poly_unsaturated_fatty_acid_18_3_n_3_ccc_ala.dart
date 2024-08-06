import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid18_3_n3_ccc_ALA extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 18:3 n-3 c,c,c (ALA)';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid18_3_n3_ccc_ALA({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid18_3_n3_ccc_ALA.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}