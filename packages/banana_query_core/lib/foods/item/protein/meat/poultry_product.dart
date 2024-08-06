import 'meat_product.dart';

class PoultryProduct extends MeatProduct {
  static const String foodType = 'Poultry Products';
  const PoultryProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  PoultryProduct.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
