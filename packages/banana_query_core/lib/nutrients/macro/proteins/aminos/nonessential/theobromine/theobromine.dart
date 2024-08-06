import 'package:banana_query_core/nutrients/nonessential/non_essential.dart';

class Theobromine extends NonEssentialNutrient {
  static const nutrientType = 'Theobromine';
  static const measuringUnits = 'mg';

  Theobromine({required amount})
      : super(amount: amount, type: nutrientType, units: measuringUnits);

  Theobromine.fromJson(Map<String, dynamic> json)
      : assert(json['type'] == nutrientType),
        assert(json['units'] == measuringUnits),
        super.fromJson(json);
}