import '../protein/protein_product.dart';
import '../vegetables/vegetable_product.dart';

class LegumeProduct extends ProteinProduct implements VegetableProduct {
  static const String foodType = 'Legumes and Legume Products';
  const LegumeProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  LegumeProduct.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
