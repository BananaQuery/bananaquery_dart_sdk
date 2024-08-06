import 'grain_product.dart';

class CerealGrainOrPasta extends GrainProduct {
  static const String foodType = 'Cereal Grains and Pasta';
  const CerealGrainOrPasta(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  CerealGrainOrPasta.fromJson(Map<String, dynamic> json) :
    assert(json["type"] == foodType),
    super.fromJson(json);
}
