import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/nonessential_amino_acid.dart';

class Pyrrolisine extends NonEssentialAminoAcid {
  static const nutrientType = 'Pyrrolisine';
  static const measuringUnits = 'g';

  Pyrrolisine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Pyrrolisine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}