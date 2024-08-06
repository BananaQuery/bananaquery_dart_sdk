import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';


class PolyUnsaturatedFattyAcid2_4_n6 extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 2:4 n-6';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid2_4_n6({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid2_4_n6.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}