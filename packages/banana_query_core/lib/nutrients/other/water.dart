import '../nutrient.dart';

class Water extends Nutrient {
  static String nutrientType =  "Water";
  static String measuringUnits = "g";

  Water({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  Water.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}