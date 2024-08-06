
import 'folate.dart';

class FolateTotal extends Folate {
  static const nutrientType = 'Folate, total';
  static const measuringUnits = 'µg';

  FolateTotal({required super.amount}) : super(type: nutrientType, units: measuringUnits);
  FolateTotal.fromJson(Map<String, dynamic> json) :
      assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}