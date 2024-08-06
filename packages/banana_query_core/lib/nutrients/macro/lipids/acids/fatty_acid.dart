import 'package:banana_query_core/nutrients/macro/macro_nutrient.dart';

/// A fatty acid is a carboxylic acid with a long aliphatic chain, which is either saturated or unsaturated.
/// Most naturally occurring fatty acids have an unbranched chain of an even number of carbon atoms, from 4 to 28.
/// Fatty acids are usually derived from triglycerides or phospholipids.
///
/// When they are not attached to other molecules, they are known as "free" fatty acids.
/// Fatty acids are important sources of fuel because, when metabolized, they yield large quantities of ATP.
/// Many cell types can use either glucose or fatty acids for this purpose.
/// In particular, heart and skeletal muscle prefer fatty acids.
/// Despite long-standing assertions to the contrary, fatty acids can also be used as a source of fuel for brain cells.
///
/// The types of fatty acids found in most foods are:
///   - saturated
///   - monounsaturated
///   - polyunsaturated
///
/// Fatty acids with no double bonds are called "saturated", because the maximum number of hydrogen atoms are bonded to the carbon atoms.
/// Fatty acids with one double bond are called "monounsaturated" and those with multiple double bonds are called "polyunsaturated".
abstract class FattyAcid extends MacroNutrient {
  FattyAcid({required super.amount, required super.units, required super.type});
  FattyAcid.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}