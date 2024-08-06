import '../protein_product.dart';

class NutOrSeedProduct extends ProteinProduct {
  static const String foodType = 'Nut and Seed Products';
  const NutOrSeedProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  NutOrSeedProduct.fromJson(Map<String, dynamic> json) :
        super.fromJson(json..putIfAbsent("type", () => foodType));
}
