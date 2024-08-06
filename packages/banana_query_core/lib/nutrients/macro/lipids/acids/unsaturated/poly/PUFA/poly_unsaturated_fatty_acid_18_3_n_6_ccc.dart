import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid18_3_n6_ccc extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 18:3 n-6 c,c,c';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid18_3_n6_ccc({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid18_3_n6_ccc.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}