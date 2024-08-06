import '../vitamin_b.dart';

/**
 * Pantothenic (Vitamin B5)
 * */
class PantothenicAcid extends VitaminB {
  static const nutrientType = 'Pantothenic acid';
  static const measuringUnits = 'mg';

  PantothenicAcid({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  PantothenicAcid.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}