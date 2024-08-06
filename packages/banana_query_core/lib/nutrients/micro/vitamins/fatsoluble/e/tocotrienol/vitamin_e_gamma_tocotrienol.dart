import 'vitamin_e_tocotrienol.dart';

class VitaminEGammaTocotrienol extends VitaminETocotrienol {
  static const nutrientType = 'Tocotrienol, gamma';
  static const measuringUnits = 'mg';

  VitaminEGammaTocotrienol({required super.amount})
    : super(type: nutrientType, units: measuringUnits);

  VitaminEGammaTocotrienol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
