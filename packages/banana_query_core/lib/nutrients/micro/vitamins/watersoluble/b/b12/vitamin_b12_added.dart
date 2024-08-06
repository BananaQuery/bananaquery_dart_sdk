import '../vitamin_b.dart';

class VitaminB12Added extends VitaminB {
  static const nutrientType = 'Vitamin B-12, added';
  static const measuringUnits = 'µg';

  VitaminB12Added({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminB12Added.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}