import 'package:banana_query_core/foods/item/food_item.dart';
import 'package:banana_query_database/models/events/food/food_event.dart';

class FoodItemCreatedEvent extends FoodEvent {
  FoodItemCreatedEvent(this.foodItems);
  final List<FoodItem> foodItems;
}