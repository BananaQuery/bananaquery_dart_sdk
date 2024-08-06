import 'package:banana_query_core/nutrients/macro/lipids/acids/trans/trans_fatty_acid.dart';

class TotalTransFat extends TransFattyAcid {
  static const nutrientType = 'Fatty acids, total trans';
  static const measuringUnits = 'g';

  TotalTransFat({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  TotalTransFat.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}