import 'vitamin_e.dart';

class VitaminEAdded extends VitaminE {
  static const nutrientType = 'Vitamin E, added';
  static const measuringUnits = 'mg';
  VitaminEAdded({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEAdded.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
