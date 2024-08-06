import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/nonessential_amino_acid.dart';

class Serine extends NonEssentialAminoAcid {
  static const nutrientType = 'Serine';
  static const measuringUnits = 'g';

  Serine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Serine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}