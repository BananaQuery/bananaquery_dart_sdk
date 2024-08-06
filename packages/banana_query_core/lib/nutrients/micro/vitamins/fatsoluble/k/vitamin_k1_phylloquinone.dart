import 'vitamin_k1.dart';

class VitaminK1Phylloquinone extends VitaminK1 {
  static const nutrientType = 'Vitamin K (phylloquinone)';
  static const measuringUnits = 'µg';

  VitaminK1Phylloquinone({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminK1Phylloquinone.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
