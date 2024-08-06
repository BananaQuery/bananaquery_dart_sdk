import 'nonessential_amino_acid.dart';

class GlutamicAcid extends NonEssentialAminoAcid {
  static const nutrientType = 'Glutamic acid';
  static const aminoAcidUnits = 'g';

  GlutamicAcid({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  GlutamicAcid.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}