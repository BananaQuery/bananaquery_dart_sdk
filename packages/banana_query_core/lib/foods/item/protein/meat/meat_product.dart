import '../../animal/animal_product.dart';
import '../protein_product.dart';

abstract class MeatProduct extends ProteinProduct implements AnimalProduct {
  const MeatProduct(
      {
      required super.id,
      required super.name,
      required super.type,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions});

  MeatProduct.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}
