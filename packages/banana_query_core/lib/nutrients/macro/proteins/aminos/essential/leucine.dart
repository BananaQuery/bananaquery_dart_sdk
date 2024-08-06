import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/essential_amino_acid.dart';

class Leucine extends EssentialAminoAcid {
  static const nutrientType = 'Leucine';
  static const aminoAcidUnits = 'g';

  Leucine({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  Leucine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}