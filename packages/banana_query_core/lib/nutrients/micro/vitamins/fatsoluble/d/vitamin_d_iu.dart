import 'vitamin_d.dart';

class VitaminDIU extends VitaminD {
  static const nutrientType = 'Vitamin D (D2 + D3), International Units';
  static const measuringUnits = 'IU';
  VitaminDIU({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  VitaminDIU.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
