import 'folate.dart';

class FolateFood extends Folate {
  static const nutrientType = 'Folate, food';
  static const measuringUnits = 'µg';

  FolateFood({required super.amount})
      : super(type: nutrientType, units: measuringUnits);
  FolateFood.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
        super.fromJson(json);
}
