import '../animal/animal_product.dart';

class DairyProduct extends AnimalProduct {
  static const String foodType = 'Dairy Products';

  const DairyProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.description,
      super.databaseId,
      super.nutrients,
      super.portions}) : super(type: foodType);

  DairyProduct.fromJson(Map<String, dynamic> json) : super.fromJson(json);

  @override
  final String type = foodType;
}
