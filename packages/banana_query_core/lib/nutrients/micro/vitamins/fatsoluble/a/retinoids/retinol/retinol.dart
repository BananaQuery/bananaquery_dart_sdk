import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/vitamin_a.dart';

class Retinol extends VitaminA {
static String nutrientType =  "Retinol";
  static String measuringUnits = "µg";

  Retinol({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  Retinol.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}