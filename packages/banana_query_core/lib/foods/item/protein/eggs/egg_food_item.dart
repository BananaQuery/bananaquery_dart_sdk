import '../../animal/animal_product.dart';
import '../protein_product.dart';

class EggProduct extends ProteinProduct implements AnimalProduct {
  static const String foodType = 'Egg Products';
  const EggProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  EggProduct.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
