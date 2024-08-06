import 'package:banana_query_core/nutrients/macro/proteins/aminos/amino_acid.dart';

class Lysine extends AminoAcid {
  static const nutrientType = 'Lysine';
  static const measuringUnits = 'g';

  Lysine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Lysine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}