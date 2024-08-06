import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid18_2 extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 18:2';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid18_2({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid18_2.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}