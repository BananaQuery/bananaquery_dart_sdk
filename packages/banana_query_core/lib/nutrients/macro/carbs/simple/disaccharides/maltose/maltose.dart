import '../disaccharides.dart';

class Maltose extends Disaccharide {
  static const nutrientType = 'Maltose';
  static const measuringUnits = 'g';

  Maltose({required super.amount})
      : super(type: nutrientType, units: measuringUnits );

  Maltose.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}