import 'essential_amino_acid.dart';

class Valine extends EssentialAminoAcid {
  static const nutrientType = 'Valine';
  static const aminoAcidUnits = 'g';

  Valine({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  Valine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}