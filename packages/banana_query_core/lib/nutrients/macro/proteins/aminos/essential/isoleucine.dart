import 'package:banana_query_core/nutrients/macro/proteins/aminos/amino_acid.dart';

class Isoleucine extends AminoAcid {
  static const nutrientType = 'Isoleucine';
  static const measuringUnits = 'g';

  Isoleucine({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Isoleucine.fromJson(Map<String, dynamic> json)
    : assert(json['type'] == nutrientType),
      assert(json['units'] == measuringUnits),
      super.fromJson(json);
}