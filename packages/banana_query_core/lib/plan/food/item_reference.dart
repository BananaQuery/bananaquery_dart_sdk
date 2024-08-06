import '../../database/food_database_info.dart';

class ItemReference {
  ItemReference(
      {required this.id, required this.itemId, this.url, this.source});

  /// The reference id. Used to map food plan items to a reference.
  String id;

  /// The id of the item being reference. In the case of a food item this would be
  /// the food item id.
  String itemId;

  /// The url that points to the data being used. If the plan item comes
  /// from a database this would point to the database. If the plan item is not from a public
  /// database this would then be null.
  FoodDatabaseInfo? url;

  /// This would be USDA in case of the USDA food database. This is not the user
  /// that published the database but the source of the data
  String? source;

  Map<String, dynamic> toJson() {
    return {};
  }
}
