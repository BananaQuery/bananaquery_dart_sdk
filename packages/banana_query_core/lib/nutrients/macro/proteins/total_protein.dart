import 'package:banana_query_core/nutrients/macro/macro_nutrient.dart';

class TotalProtein extends MacroNutrient {
  static const nutrientType = 'Protein';
  static const measuringUnits = 'g';

  TotalProtein({ required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  TotalProtein.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}