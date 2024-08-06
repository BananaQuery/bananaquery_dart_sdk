import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_core/portions/i_food_portion.dart';

import '../../nutrients/nutrient.dart';
import 'meal.dart';

class GenericMeal extends IMeal {
  GenericMeal({required this.ingredients});

  @override
  NutritionalEntity copyWith(
      {String? name,
        String? description,
      List<Nutrient>? nutrients,
      List<IFoodPortion>? portions,
        String? databaseId,
      }) {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  String get foodCategory => "Meal";

  @override
  String get foodClass => "Meal";

  @override
  List<NutritionalEntity> ingredients;

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();

  @override
  // TODO: implement nutrients
  List<Nutrient> get nutrients => throw UnimplementedError();

  @override
  // TODO: implement portions
  List<IFoodPortion> get portions => throw UnimplementedError();

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  // TODO: implement type
  String get type => throw UnimplementedError();

  @override
  String get id => throw UnimplementedError();

  @override
  // TODO: implement databaseId
  String? get databaseId => throw UnimplementedError();

  @override
  void addPortion(IFoodPortion portion) {
    // TODO: implement addPortion
  }

  @override
  String? get description => throw UnimplementedError();

  @override
  Map<String, dynamic> get metadata => {};
}
