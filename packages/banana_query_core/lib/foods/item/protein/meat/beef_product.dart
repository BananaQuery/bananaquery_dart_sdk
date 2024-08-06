import 'meat_product.dart';

class BeefProduct extends MeatProduct {
  static const String foodType = 'Beef Products';
  const BeefProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  BeefProduct.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
