import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/essential_amino_acid.dart';

class Histidine extends EssentialAminoAcid {
  static const nutrientType = 'Histidine';
  static const aminoAcidUnits = 'g';

  Histidine({required amount})
      : super(amount: amount, type: nutrientType, units: aminoAcidUnits);

  Histidine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == aminoAcidUnits),
        super.fromJson(json);
}