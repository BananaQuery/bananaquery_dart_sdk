import 'vitamin_e_tocopherol.dart';

class VitaminEBetaTocopherol extends VitaminETocopherol {
  static const nutrientType = 'Tocopherol, beta';
  static const measuringUnits = 'mg';

  VitaminEBetaTocopherol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEBetaTocopherol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
