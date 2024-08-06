import 'package:banana_query_core/nutrients/macro/proteins/aminos/amino_acid.dart';

class Phenylalanine extends AminoAcid {
  static const nutrientType = 'Phenylalanine';
  static const measuringUnits = 'g';

  Phenylalanine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Phenylalanine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}