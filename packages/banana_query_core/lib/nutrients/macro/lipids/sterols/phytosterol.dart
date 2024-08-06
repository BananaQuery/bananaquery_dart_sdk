import 'package:banana_query_core/nutrients/macro/lipids/sterols/sterol.dart';

class Phytosterol extends Sterol {
  static const nutrientType = 'Phytosterols';
  static const measuringUnits = 'mg';

  Phytosterol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Phytosterol.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}