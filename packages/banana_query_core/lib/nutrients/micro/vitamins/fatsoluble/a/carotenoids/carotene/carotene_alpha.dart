import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotenoids.dart';

class CaroteneAlpha extends Carotenoid {
  static const String nutrientType = 'Carotene, alpha';
  static const String measuringUnits = "µg";

  CaroteneAlpha({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  CaroteneAlpha.fromJson(Map<String, dynamic> json) :
    super.fromJson(json);
}