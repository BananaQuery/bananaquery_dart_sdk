import 'i_food_portion.dart';

class FoodPortion implements IFoodPortion {
  const FoodPortion(
      {required this.foodId, required this.title, required this.gramWeight});

  const FoodPortion.gramDefault()
      : foodId = -1,
        title = 'portion',
        gramWeight = 100;

  const FoodPortion.zero()
      : foodId = -1,
        title = '???',
        gramWeight = 0.0;

  @override
  final int foodId; // TODO: Think if we really need this

  @override
  final num gramWeight;

  @override
  final String title;

  @override
  Map<String, dynamic> toJson() {
    return {'foodId': foodId, 'title': title, 'gramWeight': gramWeight};
  }

  @override
  IFoodPortion copyWith({String? title, num? gramWeight}) {
    return FoodPortion(
        foodId: foodId,
        title: title ?? this.title,
        gramWeight: gramWeight ?? this.gramWeight);
  }

  FoodPortion.fromJson(json) :
        foodId = json['foodId'],
        title = json['title'],
        gramWeight = json['gramWeight'];

  @override
  bool operator ==(Object other) {
    if (other is FoodPortion) {
      return (other.title == title && other.gramWeight == gramWeight);
    }
    return false;
  }

  @override
  int get hashCode => gramWeight.hashCode ^ title.hashCode;
}
