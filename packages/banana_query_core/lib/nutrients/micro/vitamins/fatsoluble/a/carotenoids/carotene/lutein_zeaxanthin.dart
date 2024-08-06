import '../carotenoids.dart';

class LuteinZeaxanthin extends Carotenoid {
  static const String nutrientType = 'Lutein + zeaxanthin';
  static const String measuringUnits = "µg";

  LuteinZeaxanthin({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  LuteinZeaxanthin.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}