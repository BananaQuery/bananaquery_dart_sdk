import '../vitamin_b.dart';

class VitaminB12 extends VitaminB {
  static const nutrientType = 'Vitamin B-12';
  static const measuringUnits = 'µg';

  VitaminB12({ required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminB12.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}