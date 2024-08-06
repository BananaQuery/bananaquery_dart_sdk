
import 'mineral.dart';

class Selenium extends Mineral {
  static const nutrientType = 'Selenium, Se';
  static const measuringUnits = 'µg';

  Selenium({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Selenium.fromJson(Map<String, dynamic> json) :
      assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}