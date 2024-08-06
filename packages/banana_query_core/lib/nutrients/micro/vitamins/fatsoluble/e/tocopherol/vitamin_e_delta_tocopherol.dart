import 'vitamin_e_tocopherol.dart';

class VitaminEDeltaTocopherol extends VitaminETocopherol {
  static const nutrientType = 'Tocopherol, delta';
  static const measuringUnits = 'mg';

  VitaminEDeltaTocopherol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEDeltaTocopherol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
