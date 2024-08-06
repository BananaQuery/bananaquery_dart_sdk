import 'package:banana_query_core/factories/nutrient/nutrient_factory.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:uuid/uuid.dart';

import '../nutritional_entity.dart';
import '../portions/i_food_portion.dart';
import '../factories/food_factory.dart';
import '../portions/food_portion.dart';

class PortionedFood {
  PortionedFood(
      {required this.item, required this.quantity, required this.portion});

  final String key = Uuid().v4();
  final IFoodPortion portion;
  final double quantity;
  final NutritionalEntity item;

  bool get hasNutrientInformation {
    return item.nutrients.isNotEmpty;
  }

  EnergyNutrient? get getCalories {
    if (item.nutrients.isEmpty) {
      throw Exception("No nutrients found on food item");
    }

    return nutrientTotals.firstWhere((element) => element is EnergyNutrient,
        orElse: () => throw Exception("No calories found on food item")) as EnergyNutrient;
  }

  List<Nutrient> get nutrientTotals =>
      item.nutrients.map<Nutrient>((e) {
        double amount = e.amount * quantity * portion.gramWeight / 100;
        return NutrientFactory.standard().copyWith(e, amount: amount);
      }).toList();

  List<T>? getNutrientTotalsWhereType<T extends Nutrient>() {
    return nutrientTotals.whereType<T>().toList();
  }

  PortionedFood copyWith(
      {IFoodPortion? portion, double? quantity, NutritionalEntity? item}) {
    return PortionedFood(
        portion: portion ?? this.portion,
        quantity: quantity ?? this.quantity,
        item: item ?? this.item);
  }

  @override
  int get hashCode => key.hashCode;

  @override
  bool operator ==(Object other) {
    if (other is PortionedFood) {
      return key == other.key;
    }
    return false;
  }

  Map<String, dynamic> toJson() => {
        'portion': portion.toJson(),
        'item': item.toJson(),
        'quantity': quantity,
      };

  static PortionedFood fromJson(Map<String, dynamic> json) => PortionedFood(
      item: FoodFactory.standard().fromJson(json['item']),
      quantity: json['quantity'],
      portion: FoodPortion.fromJson(json['portion']));
}
