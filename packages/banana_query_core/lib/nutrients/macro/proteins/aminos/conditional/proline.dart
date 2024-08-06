import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/conditionally_essential_amino_acid.dart';

class Proline extends ConditionallyEssentialAminoAcid {
  static const nutrientType = 'Proline';
  static const measuringUnits = 'g';

  Proline({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Proline.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}