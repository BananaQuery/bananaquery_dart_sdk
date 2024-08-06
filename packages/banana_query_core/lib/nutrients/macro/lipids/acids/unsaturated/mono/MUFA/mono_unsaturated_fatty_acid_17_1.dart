import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class MonoUnsaturatedFattyAcid17_1 extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'MUFA 17:1';
  static const measuringUnits = 'g';

  MonoUnsaturatedFattyAcid17_1({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  MonoUnsaturatedFattyAcid17_1.fromJson(Map<String, dynamic> json)
    : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}