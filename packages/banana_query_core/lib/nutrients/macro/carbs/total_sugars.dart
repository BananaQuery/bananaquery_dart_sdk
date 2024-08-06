import 'package:banana_query_core/nutrients/macro/carbs/carbohydrate.dart';

class TotalSugars extends Carbohydrate {
  static String nutrientType = "Sugars, total including NLEA";
  static const String measuringUnits = "g";
  TotalSugars({required super.amount }) : super(type: nutrientType, units: measuringUnits);

  TotalSugars.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}