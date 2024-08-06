import '../food_item.dart';

class VegetableProduct extends FoodItem {
  static const String foodType = 'Vegetables and Vegetable Products';
  const VegetableProduct(
      {
      required super.name,
      required super.id,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  VegetableProduct.fromJson(Map<String, dynamic> json) :
    super.fromJson(json..putIfAbsent("type", () => foodType));
}
