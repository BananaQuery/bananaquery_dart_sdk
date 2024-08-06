import '../vitamin_b.dart';

class VitaminB6 extends VitaminB {
  static const nutrientType = 'Vitamin B-6';
  static const measuringUnits = 'mg';

  VitaminB6({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminB6.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}