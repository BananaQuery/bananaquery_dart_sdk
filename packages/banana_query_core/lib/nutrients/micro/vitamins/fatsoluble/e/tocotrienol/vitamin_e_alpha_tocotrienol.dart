import 'vitamin_e_tocotrienol.dart';

class VitaminEAlphaTocotrienol extends VitaminETocotrienol {
  static const nutrientType = 'Tocotrienol, alpha';
  static const measuringUnits = 'mg';

  VitaminEAlphaTocotrienol({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  VitaminEAlphaTocotrienol.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
