import 'package:banana_query_core/nutrients/residue/ash/ash.dart';
import 'package:banana_query_core/nutrients/residue/inorganic_residue.dart';

typedef InorganicNutrientSerializer = InorganicResidue Function(Map<String, dynamic> json);

class InorganicNutrientFactory {
  Map<String, InorganicNutrientSerializer> registeredTypes = {};

  InorganicNutrientFactory.standard() {
    registeredTypes[Ash.nutrientType] = Ash.fromJson;
  }

  InorganicNutrientFactory.empty() {}

  void registerType(String type, InorganicNutrientSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  InorganicResidue fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null) {
      throw Exception("Unknown mineral type: $type. Did you maybe forget to register with 'mineralFactory.registerType($type, ...)'");
    }
    return serializer.call(json);
  }
}