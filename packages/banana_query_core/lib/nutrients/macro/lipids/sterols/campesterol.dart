import 'package:banana_query_core/nutrients/macro/lipids/sterols/sterol.dart';

class Campesterol extends Sterol {
  static const nutrientType = 'Campesterol';
  static const measuringUnits = 'mg';

  Campesterol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Campesterol.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}