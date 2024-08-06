import '../vitamin_b.dart';

/**
 *  Thiamin (Vitamin B1)
 * */
class Thiamin extends VitaminB {
  static const nutrientType = 'Thiamin';
  static const measuringUnits = 'mg';

  Thiamin({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Thiamin.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}