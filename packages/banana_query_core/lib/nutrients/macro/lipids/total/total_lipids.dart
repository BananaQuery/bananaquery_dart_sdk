import '../lipid.dart';

class TotalLipids extends Lipid {
  static const nutrientType = 'Total lipid (fat)';
  static const measuringUnits = 'g';

  TotalLipids({ required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  TotalLipids.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}