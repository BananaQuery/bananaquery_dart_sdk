import '../food_item.dart';

abstract class GrainProduct extends FoodItem {
  const GrainProduct(
      {
      required super.id,
      required super.name,
      required super.type,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions});

  GrainProduct.fromJson(json) : super.fromJson(json);
}
