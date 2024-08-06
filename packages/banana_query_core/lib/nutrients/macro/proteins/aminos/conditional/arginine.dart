import 'conditionally_essential_amino_acid.dart';

class Arginine extends ConditionallyEssentialAminoAcid {
  static const nutrientType = 'Arginine';
  static const aminoAcidUnits = 'g';

  Arginine({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  Arginine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}