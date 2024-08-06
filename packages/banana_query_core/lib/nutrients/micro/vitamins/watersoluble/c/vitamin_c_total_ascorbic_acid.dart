import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/c/vitamin_c.dart';

class VitaminCTotalAscorbicAcid extends VitaminC {
  static const nutrientType = 'Vitamin C, total ascorbic acid';
  static const measuringUnits = 'mg';

  VitaminCTotalAscorbicAcid({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminCTotalAscorbicAcid.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}