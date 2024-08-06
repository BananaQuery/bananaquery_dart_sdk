import '../non_essential.dart';

class Caffeine extends NonEssentialNutrient {
  static const nutrientType = 'Caffeine';
  static const measuringUnits = 'mg';

  Caffeine({required amount})
      : super(amount: amount, type: nutrientType, units: measuringUnits);

  Caffeine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}