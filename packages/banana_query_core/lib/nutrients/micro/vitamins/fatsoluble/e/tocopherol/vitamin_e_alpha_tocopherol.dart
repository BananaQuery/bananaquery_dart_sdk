import '../vitamin_e.dart';

/**
 * The alpha tecopherol variation of the vitamin D is the only form recognized
 * to meet human requirements.
 * */
class VitaminEAlphaTocopherol extends VitaminE {
  static const nutrientType = 'Vitamin E (alpha-tocopherol)';
  static const measuringUnits = 'mg';

  VitaminEAlphaTocopherol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEAlphaTocopherol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
