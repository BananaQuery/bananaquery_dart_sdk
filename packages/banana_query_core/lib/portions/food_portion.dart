class FoodPortion {
  const FoodPortion(
      {required this.foodId, required this.title, required this.gramWeight});

  const FoodPortion.gramDefault()
      : foodId = -1,
        title = 'standard',
        gramWeight = 100;

  const FoodPortion.zero()
      : foodId = -1,
        title = '???',
        gramWeight = 0.0;

  final int foodId; // TODO: Think if we really need this
  final num gramWeight;
  final String title;

  Map<String, dynamic> toJson() {
    return {'foodId': foodId, 'title': title, 'gramWeight': gramWeight};
  }

  FoodPortion copyWith({String? title, num? gramWeight}) {
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
