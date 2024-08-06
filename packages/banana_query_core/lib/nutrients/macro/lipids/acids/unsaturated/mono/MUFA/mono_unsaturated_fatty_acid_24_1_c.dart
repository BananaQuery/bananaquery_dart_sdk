import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class MonoUnsaturatedFattyAcid24_1c extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'MUFA 24:1 c';
  static const measuringUnits = 'g';

  MonoUnsaturatedFattyAcid24_1c({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  MonoUnsaturatedFattyAcid24_1c.fromJson(Map<String, dynamic> json)
    : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}