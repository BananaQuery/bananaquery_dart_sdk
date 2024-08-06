import '../carotenoids.dart';

class CaroteneBeta extends Carotenoid {
  static const String nutrientType =  "Carotene, beta";
  static const String measuringUnits = "µg";

  CaroteneBeta({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  CaroteneBeta.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}