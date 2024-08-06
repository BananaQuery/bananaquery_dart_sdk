import 'package:uuid/uuid.dart';

import '../../portions/food_portion.dart';
import '../../portions/i_food_portion.dart';

class PlanEntry {
  PlanEntry(
      {required this.portion,
      required this.foodUid,
      required this.quantity,
      required this.dayIndex,
      required this.mealIndex,
      required this.dayCount});

  String uid = const Uuid().v4();

  /// ----------- PLAN ENTRY's FOOD INFORMATION -----------
  IFoodPortion portion;
  double quantity;
  String foodUid;
  int mealIndex;
  int dayIndex;
  int dayCount; // The number of consecutive days that this entry appears on

  bool overlapsWithDay(int day) {
    return dayIndex <= day && day < (dayIndex + dayCount);
  }

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "portion": portion.toJson(),
        "foodUid": foodUid,
        "quantity": quantity,
        "mealIndex": mealIndex,
        "dayIndex": dayIndex,
        "dayCount": dayCount,
      };

  static PlanEntry fromJson(Map<String, dynamic> json) {
    return PlanEntry(
      portion: FoodPortion.fromJson(json["portion"]),
      foodUid: json["foodUid"],
      quantity: json["quantity"],
      dayIndex: json["dayIndex"],
      mealIndex: json["mealIndex"],
      dayCount: json["dayCount"],
    );
  }
}
