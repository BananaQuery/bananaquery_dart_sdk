import 'meat_product.dart';

class LambOrGameProduct extends MeatProduct {
  static const String foodType = 'Lamb, Veal, and Game Products';
  const LambOrGameProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  LambOrGameProduct.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
