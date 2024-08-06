import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';


class PolyUnsaturatedFattyAcid2_5_n3 extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 2:5 n-3 (EPA)';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid2_5_n3({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid2_5_n3.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}