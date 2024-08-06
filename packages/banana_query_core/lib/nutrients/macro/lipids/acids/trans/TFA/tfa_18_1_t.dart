import 'package:banana_query_core/nutrients/macro/lipids/acids/trans/trans_fatty_acid.dart';

class TFA_18_1_t extends TransFattyAcid {
  static const nutrientType = 'TFA 18:1 t';
  static const measuringUnits = 'g';

  TFA_18_1_t({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  TFA_18_1_t.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}