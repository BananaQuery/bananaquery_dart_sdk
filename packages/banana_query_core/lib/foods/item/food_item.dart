import 'dart:convert';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:uuid/uuid.dart';
import '../../factories/nutrient/nutrient_factory.dart';
import '../../nutrients/nutrient.dart';
import 'package:crypto/crypto.dart';

import '../../nutritional_entity.dart';
import '../../portions/food_portion.dart';
import '../../portions/i_food_portion.dart';

class FoodItem extends NutritionalEntity {
  const FoodItem(
      {
        required this.id,
        required this.name,
      required this.foodClass,
      required this.foodCategory,
      required this.type,
      this.description,
      this.databaseId,

      this.nutrients = const [],
      this.portions = const []});

  FoodItem.empty() :
        databaseId = null,
        id = Uuid().v4(),
        name = "",
        description = "",
        type = 'unknown',
        foodClass = "unknown",
        foodCategory = "unknown",
        nutrients = [],
        portions = [FoodPortion.gramDefault()];

  @override
  final String? databaseId;

  @override
  final String id;

  @override
  final String name;

  @override
  final String? description;

  @override
  final String type;

  @override
  final String foodClass;

  @override
  final String foodCategory;

  @override
  final List<Nutrient> nutrients;

  @override
  final List<IFoodPortion> portions;

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "databaseId": databaseId,
      "name": name,
      "type": type,
      "foodClass": foodClass,
      "foodCategory": foodCategory,
      "nutrients": jsonEncode(nutrients),
      "portions": jsonEncode(portions)
    };
  }

  FoodItem.fromJson(Map<String, dynamic> json):
        // note: no need to add get the id from the json object since the id is
        // generated from the databaseId and uid
        id = json['id'],
        databaseId = json['databaseId'],
        name = json['name'],
        description = json['description'],
        type = (json..putIfAbsent("type", () => "unknown"))['type'],
        foodClass = json['foodClass'],
        foodCategory = json['foodCategory'],
        nutrients = json['nutrients'] != null
            ? jsonDecode(json['nutrients'])
                .where((nutrient) =>
                    nutrient['type'] != EnergyNutrient.nutrientType &&
                    nutrient['units'] != "J")
                .map<Nutrient>(
                    (nutrient) => NutrientFactory.standard().fromJson(nutrient))
                .toList()
            : [],
        portions = extractPortionsFromJson(json);

  static List<IFoodPortion> extractPortionsFromJson(Map<String, dynamic> json) {
    List<IFoodPortion> portions = json['portions'] != null
        ? jsonDecode(json['portions'])
            .map<FoodPortion>((portion) => FoodPortion.fromJson(portion))
            .toList()
        : [];

    return portions.isNotEmpty ? portions : [FoodPortion.gramDefault()];
  }

  @override
  NutritionalEntity copyWith({name, description, nutrients, portions, databaseId}) {
    Map<String, dynamic> json = toJson();
    if (name != null) {
      json["name"] = name;
    }

    if (nutrients != null) {
      json['nutrients'] = nutrients.map((e) => e.toJson());
    }

    if (portions != null) {
      json['portions'] = portions.map((e) => e.toJson());
    }

    if (databaseId != null) {
      json['databaseId'] = databaseId;
    }

    return FoodItem.fromJson(json);
  }

  String generateNutritionHash(Map<String, dynamic> nutritionInfo) {
    List<int> bytes = utf8.encode(jsonEncode(toJson()));
    Digest digest = sha256.convert(bytes);
    return digest.toString();
  }

  @override
  int get hashCode {
    int itemHashCode = id.hashCode ^
        name.hashCode ^
        type.hashCode ^
        foodClass.hashCode ^
        foodCategory.hashCode;

    if (nutrients.isNotEmpty) {
      int nutrientsHash = nutrients
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element);
      itemHashCode = itemHashCode ^ nutrientsHash;
    }

    if (portions.isNotEmpty) {
      int portionsHash = portions
          .map((e) => e.hashCode)
          .reduce((value, element) => value ^ element);

      itemHashCode = itemHashCode ^ portionsHash;
    }

    return itemHashCode;
  }

  @override
  void addPortion(IFoodPortion portion) {
    portions.add(portion);
  }

  @override
  Map<String, dynamic> get metadata => {};
}
