import 'package:banana_query_core/factories/nutrient/mineral_factory.dart';
import 'package:banana_query_core/factories/nutrient/vitamin_factory.dart';
import 'package:banana_query_core/nutrients/micro/micro_nutrient.dart';
import 'package:banana_query_core/nutrients/micro/other/choline.dart';

import '../../nutrients/micro/other/betaine.dart';

typedef MicroSerializer = MicroNutrient Function(Map<String, dynamic> json);

class MicroNutrientFactory {
  Map<String, MicroSerializer> registeredTypes = {};

  MicroNutrientFactory.standard() {
    registeredTypes.addAll(VitaminFactory.standard().registeredTypes);
    registeredTypes.addAll(MineralFactory.standard().registeredTypes);
    registeredTypes[Choline.nutrientType] = Choline.fromJson;
    registeredTypes[Betaine.nutrientType] = Betaine.fromJson;
  }

  MicroNutrientFactory.empty() {}

  void registerType(String type, MicroSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  MicroNutrient fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null) {
      throw Exception("Unknown mineral type: $type. Did you maybe forget to register with 'mineralFactory.registerType($type, ...)'");
    }
    return serializer.call(json);
  }
}
