import '../vitamin_b.dart';

/**
 * Niacin (Vitamin B3)
 * */
class Niacin extends VitaminB {
  static const nutrientType = 'Niacin';
  static const measuringUnits = 'mg';

  Niacin({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Niacin.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}