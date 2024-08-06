import 'conditionally_essential_amino_acid.dart';

class Cystine extends ConditionallyEssentialAminoAcid {
  static const nutrientType = 'Cystine';
  static const aminoAcidUnits = 'g';

  Cystine({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  Cystine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}