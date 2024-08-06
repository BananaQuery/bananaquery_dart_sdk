import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/vitamin_a.dart';

class VitaminAIU extends VitaminA {
  static const nutrientType = 'Vitamin A, IU';
  static const measuringUnits = 'IU';

  VitaminAIU({required super.amount })
      : super(type: nutrientType, units: measuringUnits);

  VitaminAIU.fromJson(Map<String, dynamic> json) :
      assert(json['type'] == nutrientType),
assert(json['units'] == measuringUnits),
      super.fromJson(json);
}
