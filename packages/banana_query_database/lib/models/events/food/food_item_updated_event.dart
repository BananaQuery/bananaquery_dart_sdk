import 'package:banana_query_core/foods/item/food_item.dart';

import 'food_event.dart';

class FoodItemUpdatedEvent extends FoodEvent {
  FoodItemUpdatedEvent(this.foodItem);
  final FoodItem foodItem;
}