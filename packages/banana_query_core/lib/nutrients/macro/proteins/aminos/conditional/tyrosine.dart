import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/conditionally_essential_amino_acid.dart';

class Tyrosine extends ConditionallyEssentialAminoAcid {
  static const nutrientType = 'Tyrosine';
  static const measuringUnits = 'g';

  Tyrosine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Tyrosine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}