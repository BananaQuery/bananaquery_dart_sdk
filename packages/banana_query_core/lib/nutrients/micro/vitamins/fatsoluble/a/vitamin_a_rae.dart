import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/vitamin_a.dart';

class VitaminARAE extends VitaminA {
  static const nutrientType = 'Vitamin A, RAE';
  static const measuringUnits = 'µg';

  VitaminARAE({required super.amount, required super.units})
      : super(type: nutrientType);

  VitaminARAE.fromJson(Map<String, dynamic> json) :
        assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}
