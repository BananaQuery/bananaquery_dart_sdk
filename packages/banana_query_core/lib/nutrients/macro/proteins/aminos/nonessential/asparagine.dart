import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/nonessential_amino_acid.dart';

class Asparagine extends NonEssentialAminoAcid {
  static const nutrientType = 'Asparagine';
  static const measuringUnits = 'g';

  Asparagine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Asparagine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}