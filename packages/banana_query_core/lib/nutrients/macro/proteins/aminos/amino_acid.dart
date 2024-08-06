import 'package:banana_query_core/nutrients/macro/macro_nutrient.dart';

/// Amino acids are the building blocks of proteins.
/// They are organic compounds made up of carbon, hydrogen, nitrogen, oxygen or sulfur.
/// They are the largest group of macronutrients and are vital for the proper functioning of the body.
/// They are essential for the synthesis of body proteins and are used as fuel for energy.
/// They are also involved in the synthesis of hormones, neurotransmitters,
/// vitamins and other molecules essential for health.
///
/// Amino acids are classified into three groups:
/// - Essential amino acids: they are not synthesized by the body and must be provided by the diet.
/// - Non-essential amino acids: they are synthesized by the body from other amino acids.
/// - Conditionally essential amino acids: they are not essential in normal conditions,
/// but become essential in certain situations, such as illness or stress.
///
/// Amino acids are found in animal and vegetable proteins.
/// Animal proteins are considered complete proteins because they contain all the essential amino acids.
/// Vegetable proteins are considered incomplete proteins because they lack one or more essential amino acids.
abstract class AminoAcid extends MacroNutrient {
  AminoAcid({required super.amount, required super.units, required super.type});

  AminoAcid.fromJson(Map<String, dynamic> json)
      : super.fromJson(json);
}