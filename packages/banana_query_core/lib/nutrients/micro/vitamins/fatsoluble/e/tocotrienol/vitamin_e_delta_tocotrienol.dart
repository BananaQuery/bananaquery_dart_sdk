import 'vitamin_e_tocotrienol.dart';

class VitaminEDeltaTocotrienol extends VitaminETocotrienol {
  static const nutrientType = 'Tocotrienol, delta';
  static const measuringUnits = 'mg';
  VitaminEDeltaTocotrienol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEDeltaTocotrienol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
