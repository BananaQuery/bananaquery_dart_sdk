import '../food_item.dart';

class FruitProduct extends FoodItem {
  static const String foodType = 'Fruits and Fruit Juices';
  const FruitProduct({
      
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.description,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  FruitProduct.fromJson(Map<String, dynamic> json)
      : assert(json["type"] == foodType),
        super.fromJson(json);
}
