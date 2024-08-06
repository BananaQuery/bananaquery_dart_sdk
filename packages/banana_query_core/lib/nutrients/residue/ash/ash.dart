import 'package:banana_query_core/nutrients/residue/inorganic_residue.dart';

class Ash extends InorganicResidue {
  static String nutrientType =  "Ash";
  static String measuringUnits = "g";

  Ash({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  Ash.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}