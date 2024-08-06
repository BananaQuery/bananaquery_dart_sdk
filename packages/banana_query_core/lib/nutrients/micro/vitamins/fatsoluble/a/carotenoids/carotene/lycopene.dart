import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotenoids.dart';

class Lycopene extends Carotenoid {
static const String nutrientType = 'Lycopene';
  static const String measuringUnits = "µg";

  Lycopene({required super.amount})
      : super(type: nutrientType, units: measuringUnits);

  Lycopene.fromJson(Map<String, dynamic> json) :
    super.fromJson(json);

}