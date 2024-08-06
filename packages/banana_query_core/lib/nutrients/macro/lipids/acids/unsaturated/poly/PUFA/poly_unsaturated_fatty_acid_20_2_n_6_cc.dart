import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid20_2_n6_cc extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 20:2 n-6 c,c';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid20_2_n6_cc({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid20_2_n6_cc.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}