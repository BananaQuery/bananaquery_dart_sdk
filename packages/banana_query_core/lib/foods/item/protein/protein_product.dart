import '../food_item.dart';

abstract class ProteinProduct extends FoodItem {
  const ProteinProduct(
      {
      required super.id,
      required super.name,
      required super.type,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions});

  ProteinProduct.fromJson(Map<String, dynamic> json) :
    super.fromJson(json);
}
