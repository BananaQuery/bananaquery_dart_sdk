import 'grain_product.dart';

class BreakfastCerealProduct extends GrainProduct {
  static const String foodType = 'Breakfast Cereals';
  const BreakfastCerealProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  BreakfastCerealProduct.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
