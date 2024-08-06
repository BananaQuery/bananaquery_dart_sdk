import 'vitamin_e_tocotrienol.dart';

class VitaminEBetaTocotrienol extends VitaminETocotrienol {
  static const nutrientType = 'Tocotrienol, beta';
  static const measuringUnits = 'mg';

  VitaminEBetaTocotrienol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEBetaTocotrienol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
