import 'vitamin_k2.dart';

class VitaminK2Menaquinone extends VitaminK2 {
  static const nutrientType = 'Vitamin K (Menaquinone-4)';
  static const measuringUnits = 'µg';

  VitaminK2Menaquinone({ required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminK2Menaquinone.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}