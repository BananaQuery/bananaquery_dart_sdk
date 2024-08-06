import 'package:banana_query_core/nutrients/nutrient.dart';
import 'portions/i_food_portion.dart';

/// the FoodItem class encapsulates a plans item with all of its nutritional
/// information and portion size information. This FoodItem class is the base class
/// that is used in the {FoodPlan} class.
abstract class NutritionalEntity {
  // Unique identifier for the database that the food item belongs to
  // an uninitialized value means that either the food item doesn't belong to a database or the food item is not saved in the database yet.
  String? get databaseId;
  // Unique identifier for the food item in the case of the USDA database this is the NDBNO
  // an uninitialized value that the food item is not saved in the database yet.
  String get id;
  // Name of the food item
  String get name;
  // Description of the food item
  String? get description;
  // Type of food item, this is the same as the food category fod this value is not localized and is used for filtering
  String? get type;

  // This is the food group that the food item belongs to, this value is localized and is used for rendering
  String get foodCategory;

  // ---------
  List<Nutrient> get nutrients;
  List<IFoodPortion> get portions;
  Map<String, dynamic> get metadata;

  const NutritionalEntity();

  void addPortion(IFoodPortion portion);

  Map<String, dynamic> toJson();

  NutritionalEntity copyWith(
      {String? name, String? description, List<Nutrient>? nutrients, List<IFoodPortion>? portions, String? databaseId});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NutritionalEntity &&
          runtimeType == other.runtimeType &&
          other.id == this.id &&
          hashCode == other.hashCode;

  @override
  int get hashCode => id.hashCode;
}
