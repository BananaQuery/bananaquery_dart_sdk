import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/nonessential_amino_acid.dart';

class Hydroxyproline extends NonEssentialAminoAcid {
  static const nutrientType = 'Hydroxyproline';
  static const measuringUnits = 'g';

  Hydroxyproline({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Hydroxyproline.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType), assert(json['units'] == measuringUnits),
        super.fromJson(json);
}