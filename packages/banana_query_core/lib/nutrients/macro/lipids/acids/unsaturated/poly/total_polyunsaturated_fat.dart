import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/unsaturated_fatty_acid.dart';

class TotalPolyunsaturatedFat extends UnsaturatedFattyAcid {
  static const nutrientType = 'Fatty acids, total polyunsaturated';
  static const measuringUnits = 'g';

  TotalPolyunsaturatedFat({required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  TotalPolyunsaturatedFat.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}