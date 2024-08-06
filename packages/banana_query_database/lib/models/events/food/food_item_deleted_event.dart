import 'package:banana_query_core/foods/item/food_item.dart';

import 'food_event.dart';

class FoodItemDeletedEvent extends FoodEvent {
  FoodItemDeletedEvent(this.foodItem);

  final FoodItem foodItem;
}