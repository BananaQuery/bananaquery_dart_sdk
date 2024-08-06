import '../vitamin_b.dart';

/**
 * Riboflavin (Vitamin B2)
 * */
class Riboflavin extends VitaminB {
  static const nutrientType = 'Riboflavin';
  static const measuringUnits = 'mg';

  Riboflavin({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Riboflavin.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}