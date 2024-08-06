import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/nonessential_amino_acid.dart';

class AsparticAcid extends NonEssentialAminoAcid {
  static const nutrientType = 'Aspartic acid';
  static const measuringUnits = 'g';

  AsparticAcid({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  AsparticAcid.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}