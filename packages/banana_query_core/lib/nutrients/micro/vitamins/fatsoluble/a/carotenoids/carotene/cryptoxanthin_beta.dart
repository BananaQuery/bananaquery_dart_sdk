import '../carotenoids.dart';

class CryptoxanthinBeta extends Carotenoid {
  static const String nutrientType = 'Cryptoxanthin, beta';
  static const String measuringUnits = "µg";

  CryptoxanthinBeta({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  CryptoxanthinBeta.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}