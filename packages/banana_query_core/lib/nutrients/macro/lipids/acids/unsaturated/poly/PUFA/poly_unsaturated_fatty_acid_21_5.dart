import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class PolyUnsaturatedFattyAcid21_5 extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'PUFA 21:5';
  static const measuringUnits = 'g';

  PolyUnsaturatedFattyAcid21_5({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PolyUnsaturatedFattyAcid21_5.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}