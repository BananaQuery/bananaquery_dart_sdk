import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid.dart';

class MonoUnsaturatedFattyAcid22_1c extends MonoUnsaturatedFattyAcid {
  static const nutrientType = 'MUFA 22:1 c';
  static const measuringUnits = 'g';

  MonoUnsaturatedFattyAcid22_1c({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  MonoUnsaturatedFattyAcid22_1c.fromJson(Map<String, dynamic> json)
    : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}