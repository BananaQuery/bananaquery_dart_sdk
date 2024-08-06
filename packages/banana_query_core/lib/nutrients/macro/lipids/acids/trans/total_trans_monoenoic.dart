import 'package:banana_query_core/nutrients/macro/lipids/acids/trans/trans_fatty_acid.dart';

class TotalTransMonoenoic extends TransFattyAcid {
  static const nutrientType = 'Fatty acids, total trans-monoenoic';
  static const measuringUnits = 'g';

  TotalTransMonoenoic({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  TotalTransMonoenoic.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}