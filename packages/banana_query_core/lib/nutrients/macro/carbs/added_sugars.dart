import 'package:banana_query_core/nutrients/macro/carbs/carbohydrate.dart';

class AddedSugars extends Carbohydrate {
  static String nutrientType =  "Sugars, added";
  static String measuringUnits = "g";

  AddedSugars({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  AddedSugars.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}