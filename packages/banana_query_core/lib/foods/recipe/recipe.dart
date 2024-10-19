import 'package:banana_query_core/banana_query_api.dart';
import '../../nutrients/nutrient.dart';
import '../portioned_food.dart';

class CookingStep {
  CookingStep(
      {required this.title, this.description, this.imageUrl, this.videoUrl});

  String title;
  String? description;
  String? videoUrl;
  String? imageUrl;
}

class Recipe extends FoodItem {
  Recipe(
      {this.steps = const [],
      this.ingredients = const [],
      this.timeToCook = Duration.zero,
      required super.id,
      required super.name,
      required super.foodClass,
      required super.foodCategory,
      required super.type,
      super.description,
      super.databaseId,
      super.nutrients = const [],
      super.portions});

  Recipe.empty()
      : steps = [],
        timeToCook = Duration.zero,
        ingredients = [],
        super.empty();

  List<CookingStep> steps;
  Duration timeToCook;
  List<PortionedFood> ingredients;

  @override
  String get foodCategory => "Meal";

  @override
  String get foodClass => "Meal";

  @override
  Map<String, dynamic> get metadata => {};

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
      };

  @override
  NutritionalEntity copyWith({
    String? name,
    String? description,
    List<Nutrient>? nutrients,
    List<FoodPortion>? portions,
    String? databaseId,
  }) {
    throw UnimplementedError();
  }
}
