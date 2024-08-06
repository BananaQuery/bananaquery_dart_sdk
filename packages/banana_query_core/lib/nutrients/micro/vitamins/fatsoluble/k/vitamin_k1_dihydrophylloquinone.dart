import 'vitamin_k1.dart';

class VitaminK1Dihydrophylloquinone extends VitaminK1 {
  static const nutrientType = 'Vitamin K (Dihydrophylloquinone)';
  static const measuringUnits = 'µg';

  VitaminK1Dihydrophylloquinone({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminK1Dihydrophylloquinone.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
