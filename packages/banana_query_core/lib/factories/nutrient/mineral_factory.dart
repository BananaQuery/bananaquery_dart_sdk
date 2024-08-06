import 'package:banana_query_core/nutrients/micro/minerals/calcium.dart';
import 'package:banana_query_core/nutrients/micro/minerals/copper.dart';
import 'package:banana_query_core/nutrients/micro/minerals/mineral.dart';

import '../../nutrients/micro/minerals/fluoride.dart';
import '../../nutrients/micro/minerals/iron.dart';
import '../../nutrients/micro/minerals/magnesium.dart';
import '../../nutrients/micro/minerals/manganese.dart';
import '../../nutrients/micro/minerals/phosphorus.dart';
import '../../nutrients/micro/minerals/potassium.dart';
import '../../nutrients/micro/minerals/selenium.dart';
import '../../nutrients/micro/minerals/sodium.dart';
import '../../nutrients/micro/minerals/zinc.dart';

typedef MineralSerializer = Mineral Function(Map<String, dynamic> json);

class MineralFactory {
  Map<String, MineralSerializer> registeredTypes = {};

  MineralFactory.standard() {
    // --- MINERALS --- //
    registeredTypes[Calcium.nutrientType] = Calcium.fromJson;
    registeredTypes[Copper.nutrientType] = Copper.fromJson;
    registeredTypes[Fluoride.nutrientType] = Fluoride.fromJson;
    registeredTypes[Iron.nutrientType] = Iron.fromJson;

    registeredTypes[Magnesium.nutrientType] = Magnesium.fromJson;
    registeredTypes[Manganese.nutrientType] = Manganese.fromJson;
    registeredTypes[Potassium.nutrientType] = Potassium.fromJson;
    registeredTypes[Phosphorus.nutrientType] = Phosphorus.fromJson;
    registeredTypes[Selenium.nutrientType] = Selenium.fromJson;
    registeredTypes[Sodium.nutrientType] = Sodium.fromJson;
    registeredTypes[Zinc.nutrientType] = Zinc.fromJson;
  }

  MineralFactory.empty() {}

  void registerType(String type, MineralSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  Mineral fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null) {
      throw Exception("Unknown mineral type: $type. Did you maybe forget to register with 'mineralFactory.registerType($type, ...)'");
    }
    return serializer.call(json);
  }
}
