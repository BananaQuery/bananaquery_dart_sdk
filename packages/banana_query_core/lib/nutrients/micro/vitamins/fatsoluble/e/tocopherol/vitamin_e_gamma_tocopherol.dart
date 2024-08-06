import 'vitamin_e_tocopherol.dart';

class VitaminEGammaTocopherol extends VitaminETocopherol {
  static const nutrientType = 'Tocopherol, gamma';
  static const measuringUnits = 'mg';

  VitaminEGammaTocopherol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEGammaTocopherol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}

