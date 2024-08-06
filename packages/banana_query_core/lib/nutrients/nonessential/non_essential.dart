import '../nutrient.dart';

abstract class NonEssentialNutrient extends Nutrient {
  NonEssentialNutrient({required super.amount, required super.units, required super.type});
  
  NonEssentialNutrient.fromJson(Map<String, dynamic> json) :
    super.fromJson(json);
}