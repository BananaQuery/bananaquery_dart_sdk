import 'package:banana_query_core/nutrients/nonessential/alcohol/alcohol.dart';
import 'package:banana_query_core/nutrients/nonessential/cholesterol/cholesterol.dart';
import 'package:banana_query_core/nutrients/nonessential/non_essential.dart';

import '../../nutrients/macro/proteins/aminos/nonessential/theobromine/theobromine.dart';
import '../../nutrients/nonessential/caffeine/caffeine.dart';

typedef NonEssentialNutrientSerializer = NonEssentialNutrient Function(Map<String, dynamic> json);

class NonEssentialNutrientFactory {
  Map<String, NonEssentialNutrientSerializer> registeredTypes = {};

  NonEssentialNutrientFactory.standard() {
    registeredTypes[Cholesterol.nutrientType] = Cholesterol.fromJson;
    registeredTypes[Alcohol.nutrientType] = Alcohol.fromJson;
    registeredTypes[Caffeine.nutrientType] = Caffeine.fromJson;
    registeredTypes[Theobromine.nutrientType] = Theobromine.fromJson;
  }

  NonEssentialNutrientFactory.empty() {}

  void registerType(String type, NonEssentialNutrientSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  NonEssentialNutrient fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null) {
      throw Exception("Unknown mineral type: $type. Did you maybe forget to register with 'mineralFactory.registerType($type, ...)'");
    }
    return serializer.call(json);
  }
}