import 'essential_amino_acid.dart';

class Methionine extends EssentialAminoAcid {
  static const nutrientType = 'Methionine';
  static const aminoAcidUnits = 'g';

  Methionine({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  Methionine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}