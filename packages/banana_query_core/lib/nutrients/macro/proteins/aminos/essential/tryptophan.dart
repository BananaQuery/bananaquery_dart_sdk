import 'package:banana_query_core/nutrients/macro/proteins/aminos/amino_acid.dart';

class Tryptophan extends AminoAcid {
  static const nutrientType = 'Tryptophan';
  static const measuringUnits = 'g';

  Tryptophan({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Tryptophan.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}