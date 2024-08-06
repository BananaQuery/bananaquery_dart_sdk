import 'package:banana_query_core/nutrients/macro/lipids/sterols/sterol.dart';

class Stigmasterol extends Sterol {
  static const nutrientType = 'Stigmasterol';

  static const measuringUnits = 'mg';

  Stigmasterol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Stigmasterol.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}