/// Describes the weight of a plans item in grams based on common plans portions.
/// For example, it is a lot easier to think of milk in cup portions rather than
/// milliliter or gram amounts.
///
/// A plans portion that describes milk quantity in terms of cups help you make
/// the conversion between grams of milk to cups of milk and vice-versa
abstract class IFoodPortion {
  String get title; // Portion name. ex: cups.
  num get gramWeight; // Grams in the specific portion.
  int get foodId;
  Map<String, dynamic> toJson();
  IFoodPortion copyWith({ String? title, num? gramWeight });
}