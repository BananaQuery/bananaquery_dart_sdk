import 'package:banana_query_core/nutrients/nonessential/non_essential.dart';

class Cholesterol extends NonEssentialNutrient {
  static String nutrientType =  "Cholesterol";
  static String measuringUnits = "mg";

  Cholesterol({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  Cholesterol.fromJson(Map<String, dynamic> json) :
    assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
    super.fromJson(json);
}