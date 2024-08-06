import 'folate.dart';

class FolateDFE extends Folate {
  static const nutrientType = 'Folate, DFE';
  static const measuringUnits = 'µg';

  FolateDFE({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  FolateDFE.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}