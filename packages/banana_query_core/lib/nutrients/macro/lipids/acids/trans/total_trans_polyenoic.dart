import 'package:banana_query_core/nutrients/macro/lipids/acids/fatty_acid.dart';

class TotalTransPolyenoic extends FattyAcid {
  static final String nutrientType = "Fatty acids, total trans-polyenoic";
  static final String measuringUnits = "g";

  TotalTransPolyenoic({required double amount})
      : super(type: nutrientType, units: measuringUnits, amount: amount);

  TotalTransPolyenoic.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}