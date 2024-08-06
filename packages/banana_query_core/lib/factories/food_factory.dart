import 'package:banana_query_core/foods/equivalence/equivalence.dart';

import '../foods/item/dairy/dairy_product.dart';
import '../foods/item/food_item.dart';
import '../foods/item/fruits/fruit_product.dart';
import '../foods/item/grains/breakfast_cereal_product.dart';
import '../foods/item/grains/cereal_grain_or_pasta.dart';
import '../foods/item/legumes/legume_product.dart';
import '../foods/item/protein/eggs/egg_food_item.dart';
import '../foods/item/protein/meat/beef_product.dart';
import '../foods/item/protein/meat/finfish_or_shellfish_product.dart';
import '../foods/item/protein/meat/lamb_or_game_product.dart';
import '../foods/item/protein/meat/pork_product.dart';
import '../foods/item/protein/meat/poultry_product.dart';
import '../foods/item/protein/meat/sausage_or_luncheon_meat_product.dart';
import '../foods/item/protein/nuts/nut_or_seed_product.dart';
import '../foods/item/vegetables/vegetable_product.dart';
import '../nutritional_entity.dart';

typedef FoodSerializer = NutritionalEntity Function(Map<String, dynamic> json);

class FoodFactory {
  Map<String, FoodSerializer> registeredTypes = {};

  // When no serializer matches the registered serializers then the default
  // serializer is used.
  FoodSerializer? defaultSerializer;

  FoodFactory.standard() {
    /// ------------ REGULAR FOOD ITEMS ---------------- ///

    /// ------------ PROTEINS --------------
    //   ---------- MEATS --------------
    registeredTypes[BeefProduct.foodType] = BeefProduct.fromJson;
    registeredTypes[FinfishOrShellfishProduct.foodType] =
        FinfishOrShellfishProduct.fromJson;
    registeredTypes[PorkProduct.foodType] = PorkProduct.fromJson;
    registeredTypes[PoultryProduct.foodType] = PoultryProduct.fromJson;
    registeredTypes[LambOrGameProduct.foodType] = LambOrGameProduct.fromJson;
    registeredTypes[SausageOrLuncheonMeatProduct.foodType] =
        SausageOrLuncheonMeatProduct.fromJson;
    registeredTypes[EggProduct.foodType] = EggProduct.fromJson;

    ///   ---------- LEGUMES --------------
    registeredTypes[LegumeProduct.foodType] = LegumeProduct.fromJson;

    ///  ----------- NUTS --------------
    registeredTypes[NutOrSeedProduct.foodType] = NutOrSeedProduct.fromJson;

    /// ------------ FRUITS --------------
    registeredTypes[FruitProduct.foodType] = FruitProduct.fromJson;

    /// ------------ VEGETABLES --------------
    registeredTypes[VegetableProduct.foodType] = VegetableProduct.fromJson;

    /// ------------ GRAINS --------------
    registeredTypes[BreakfastCerealProduct.foodType] =
        BreakfastCerealProduct.fromJson;
    registeredTypes[CerealGrainOrPasta.foodType] = CerealGrainOrPasta.fromJson;

    /// ------------ DAIRY --------------
    registeredTypes[DairyProduct.foodType] = DairyProduct.fromJson;

    /// -------------------- EQUIVALENTS ------------------- ///
    registeredTypes[Equivalence.foodType] = Equivalence.fromJson;

    defaultSerializer = FoodItem.fromJson;
  }

  FoodFactory.empty() {
    defaultSerializer = FoodItem.fromJson;
  }

  void registerType(String type, FoodSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  NutritionalEntity fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null && defaultSerializer == null) {
      throw Exception("Unknown food type: $type");
    }
    return serializer?.call(json) ?? defaultSerializer!.call(json);
  }
}
