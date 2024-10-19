import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';

import '../../factories/nutrient/nutrient_factory.dart';
import '../../nutritional_entity.dart';
import '../../portions/food_portion.dart';

class Equivalence extends NutritionalEntity {
  Equivalence({
    required this.id,
    required this.name,
    required this.items,
    required this.portions,
    this.databaseId,
    this.description
  });

  static final String foodType = "Equivalence";

  @override
  final String name;

  @override
  final String? description;

  /// When all the food items are very similar in nature then this field can be
  /// used to define common portions that all food items can share. For example
  /// if you make an equivalence named "Healthy Breads" then you can define
  /// portions that are shared by all items like "slice", "loaf", "roll", etc.
  ///
  /// When a equivalence can't have common portions you can leave this empty
  /// and the portions will be defined individually by the items.
  @override
  final List<FoodPortion> portions;
  final List<PortionedFood> items;

  @override
  String? databaseId;

  @override
  String id;

  @override
  NutritionalEntity copyWith(
      {String? name,
        String? description,
        String? databaseId,
      List<Nutrient>? nutrients,
      List<FoodPortion>? portions}) {
    if (nutrients != null) {
      throw ArgumentError(
          "Equivalence can't have nutrients, nutrients are defined by the items");
    }
    return Equivalence(
      id: id,
      name: name ?? this.name,
      items: items,
      portions: portions ?? this.portions,
      databaseId: databaseId,
    );
  }

  @override
  String get foodCategory {
    if (items.isNotEmpty) {
      return items
          .map((e) => e.item.foodCategory)
          .reduce((value, element) => value == element ? value : "mixed");
    }
    return "unknown";
  }

  @override
  String get foodClass => "Equivalence";

  @override
  List<Nutrient> get nutrients => items
      .expand((e) => e.item.nutrients)
      .toList()
      .reversed
      .fold<Map<String, Nutrient>>({}, (previousValue, element) {
        // There are two different types of Energy nutrient with the only
        // difference between them being the units. We only want to add the
        // one with the units of "kcal". If the units are not "kcal" then
        // we just skip it.
        if (element is EnergyNutrient) {
          if (element.units != "kcal") {
            return previousValue;
          }
        }
        if (previousValue.containsKey(element.type)) {
          previousValue[element.type] = NutrientFactory.standard().fromJson({
            "amount": previousValue[element.type]!.amount + element.amount,
            "name": element.type,
            "units": element.units,
            "type": element.type,
          });
        } else {
          previousValue[element.type] = element;
        }
        return previousValue;
      })
      .values
      .toList();

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'uid': id,
        'databaseId': databaseId,
        'type': type,
        'name': name,
        'items': items.map((e) => e.toJson()).toList(),
        'portions': portions.map((e) => e.toJson()).toList(),
      };

  Equivalence.fromJson(Map<String, dynamic> json) :
      id = json['id'],
      databaseId = json['databaseId'],
      name = json['name'],
      description = json['description'],
      items = json['items'] != null
          ? json['items']
              .map<PortionedFood>((item) => PortionedFood.fromJson(item))
              .toList()
          : [],
      portions = json['portions'] != null
          ? json['portions']
              .map<FoodPortion>((portion) => FoodPortion.fromJson(portion))
              .toList()
          : [];

  @override
  String get type => "Equivalence";

  @override
  void addPortion(FoodPortion portion) {
    portions.add(portion);
  }

  @override
  int get hashCode {
    int itemHashCode = id.hashCode ^
        id.hashCode ^
        name.hashCode ^
        items.hashCode ^
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
  Map<String, dynamic> get metadata => {};
}
