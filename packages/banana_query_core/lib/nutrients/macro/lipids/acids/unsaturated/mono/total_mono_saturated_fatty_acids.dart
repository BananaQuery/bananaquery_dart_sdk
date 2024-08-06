import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/unsaturated_fatty_acid.dart';

class TotalMonoUnsaturatedFattyAcids extends UnsaturatedFattyAcid {
  static const nutrientType = 'Fatty acids, total monounsaturated';
  static const measuringUnits = 'g';

  TotalMonoUnsaturatedFattyAcids({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  TotalMonoUnsaturatedFattyAcids.fromJson(Map<String, dynamic> json)
    : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}