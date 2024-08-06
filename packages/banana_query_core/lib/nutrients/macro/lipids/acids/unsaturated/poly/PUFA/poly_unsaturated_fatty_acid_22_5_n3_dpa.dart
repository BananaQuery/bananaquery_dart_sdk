import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid22_5_n3_dpa extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 22:5 n-3 (DPA)';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid22_5_n3_dpa({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid22_5_n3_dpa.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}