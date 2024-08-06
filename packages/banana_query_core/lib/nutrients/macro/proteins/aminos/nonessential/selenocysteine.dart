import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/nonessential_amino_acid.dart';

class Selenocysteine extends NonEssentialAminoAcid {
  static const nutrientType = 'Selenocysteine';
  static const measuringUnits = 'g';

  Selenocysteine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Selenocysteine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}