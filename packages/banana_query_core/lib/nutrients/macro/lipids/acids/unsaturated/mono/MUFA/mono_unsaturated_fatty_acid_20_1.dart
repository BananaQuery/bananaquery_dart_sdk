import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class MonoUnsaturatedFattyAcid20_1 extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'MUFA 20:1';
  static const measuringUnits = 'g';

  MonoUnsaturatedFattyAcid20_1({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  MonoUnsaturatedFattyAcid20_1.fromJson(Map<String, dynamic> json)
    : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}