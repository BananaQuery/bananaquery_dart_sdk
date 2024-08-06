import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/vitamin_a.dart';

/// Retinoids (Preformed Vitamin A, primarily found in animal products)
///   These are the main retinoids found in food:
///
///     - Retinol (This is the only retinoid found in USDA database food items)
///          Found in dairy products, eggs, liver
///     - Retinal (Retinaldehyde) (nutrient not included in USDA database food items)
///          Important for vision
///     - Retinoic Acid  (nutrient not included in USDA database food items)
///          Essential for gene expression, skin health, and cellular growth
abstract class Retinoids extends VitaminA {
  Retinoids({required super.type, required super.amount, required super.units});

  Retinoids.fromJson(Map<String, dynamic> json) :
    super.fromJson(json);
}