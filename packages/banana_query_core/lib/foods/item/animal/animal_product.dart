import '../food_item.dart';

abstract class AnimalProduct extends FoodItem {
  const AnimalProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      required super.type,
      super.description,
      super.databaseId,
      super.nutrients,
      super.portions});

  AnimalProduct.fromJson(json) : super.fromJson(json);
}
