import '../../animal/animal_product.dart';
import 'meat_product.dart';

class SausageOrLuncheonMeatProduct extends MeatProduct
    implements AnimalProduct {
  static const String foodType = 'Sausages and Luncheon Meats';
  const SausageOrLuncheonMeatProduct(
      {
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      super.databaseId,
      super.nutrients,
      super.portions})
      : super(type: foodType);

  SausageOrLuncheonMeatProduct.fromJson(Map<String, dynamic> json) :
      assert(json["type"] == foodType),
      super.fromJson(json);
}
