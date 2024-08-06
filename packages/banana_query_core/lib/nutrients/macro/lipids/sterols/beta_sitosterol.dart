import 'package:banana_query_core/nutrients/macro/lipids/sterols/sterol.dart';

class BetaSitosterol extends Sterol {
  static const nutrientType = 'Beta-sitosterol';
  static const measuringUnits = 'mg';

  BetaSitosterol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  BetaSitosterol.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}