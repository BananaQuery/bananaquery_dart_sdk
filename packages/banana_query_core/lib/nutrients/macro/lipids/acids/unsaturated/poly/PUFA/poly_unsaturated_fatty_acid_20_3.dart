import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid20_3 extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 20:3';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid20_3({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid20_3.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}