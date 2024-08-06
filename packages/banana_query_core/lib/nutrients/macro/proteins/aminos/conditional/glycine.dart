import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/conditionally_essential_amino_acid.dart';

class Glycine extends ConditionallyEssentialAminoAcid {
  static const nutrientType = 'Glycine';
  static const measuringUnits = 'g';

  Glycine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Glycine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}