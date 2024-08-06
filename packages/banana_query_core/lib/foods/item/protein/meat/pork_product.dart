import 'meat_product.dart';

class PorkProduct extends MeatProduct {
  static const String foodType = 'Pork Products';
  const PorkProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  PorkProduct.fromJson(Map<String, dynamic> json) :
        assert(json["type"] == foodType),
        super.fromJson(json);
}
