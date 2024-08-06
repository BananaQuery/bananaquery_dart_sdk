import 'meat_product.dart';

class FinfishOrShellfishProduct extends MeatProduct {
  static const String foodType = 'Finfish and Shellfish';
  const FinfishOrShellfishProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  FinfishOrShellfishProduct.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
