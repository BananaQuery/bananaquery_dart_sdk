import 'essential_amino_acid.dart';

class Threonine extends EssentialAminoAcid {
  static const nutrientType = 'Threonine';
  static const aminoAcidUnits = 'g';

  Threonine({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  Threonine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}