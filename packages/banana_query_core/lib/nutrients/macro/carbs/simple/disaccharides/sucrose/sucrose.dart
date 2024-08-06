import '../disaccharides.dart';

class Sucrose extends Disaccharide {
  static const nutrientType = 'Sucrose';
  static const measuringUnits = 'g';

  Sucrose({required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  Sucrose.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}