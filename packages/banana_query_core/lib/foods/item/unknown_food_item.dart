import '../../portions/food_portion.dart';
import 'food_item.dart';

class UnknownFoodItem extends FoodItem {
  const UnknownFoodItem({name})
      : super(
            name: name,
            id: "",
            type: 'unknown',
            foodClass: "unknown",
            foodCategory: 'unknown',
            nutrients: const [],
            portions: const [FoodPortion.gramDefault()]);

  @override
  String get name =>
      "${super.name} (Bodistics has no information on this item)";
}
