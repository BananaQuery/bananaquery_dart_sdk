import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/nonessential_amino_acid.dart';

class Alanine extends NonEssentialAminoAcid {
  static const nutrientType = 'Alanine';
  static const measuringUnits = 'g';

  Alanine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Alanine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}