import '../non_essential.dart';

class Alcohol extends NonEssentialNutrient {
  static const nutrientType = 'Alcohol, ethyl';
  static const measuringUnits = 'g';

  Alcohol({required amount})
      : super(type: nutrientType, units: measuringUnits, amount: amount);

  Alcohol.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}