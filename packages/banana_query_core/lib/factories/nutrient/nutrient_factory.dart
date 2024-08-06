import 'package:banana_query_core/factories/nutrient/macro_nutrient_factory.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_core/nutrients/other/water.dart';

import 'inorganic_nutrient_factory.dart';
import 'micro_nutrient_factory.dart';
import 'non_essential_nutrient_factory.dart';

typedef NutrientSerializer = Nutrient Function(Map<String, dynamic> json);

class NutrientFactory {
  Map<String, NutrientSerializer> registeredTypes = {};

  NutrientFactory.standard() {
    registeredTypes.addAll(MicroNutrientFactory.standard().registeredTypes);
    registeredTypes.addAll(MacroNutrientFactory.standard().registeredTypes);
    registeredTypes.addAll(InorganicNutrientFactory.standard().registeredTypes);
    registeredTypes.addAll(NonEssentialNutrientFactory.standard().registeredTypes);
    registeredTypes[Water.nutrientType] = Water.fromJson;
  }

  NutrientFactory.empty() {}

  void registerType(String type, NutrientSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  Nutrient copyWith(Nutrient nutrient, { double? amount }) {
    var json = nutrient.toJson();
    json['amount'] = amount ?? nutrient.amount;
    return fromJson(json);
  }

  Nutrient fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null) {
      throw Exception("Unknown nutrient type: $type. Did you maybe forget to register with 'nutrientFactory.registerType($type, ...)'");
    }
    try {
      return serializer(json);
    } catch (e) {
      throw Exception("Error while deserializing nutrient of type $type: $e");
    }
  }
}
