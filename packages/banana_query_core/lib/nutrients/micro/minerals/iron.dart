import 'mineral.dart';

class Iron extends Mineral {
  static const nutrientType = 'Iron, Fe';
  static const measuringUnits = 'mg';

  Iron({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Iron.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}