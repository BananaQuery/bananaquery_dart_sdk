import 'vitamin_b9.dart';

class FolicAcid extends VitaminB9 {
  static const nutrientType = 'Folic acid';
  static const measuringUnits = 'µg';

  FolicAcid({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  FolicAcid.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}