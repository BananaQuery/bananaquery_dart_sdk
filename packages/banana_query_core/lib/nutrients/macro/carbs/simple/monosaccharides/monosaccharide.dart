import '../simple_carbohydrate.dart';

abstract class Monosaccharide extends SimpleCarbohydrate {
  Monosaccharide({ required super.amount, required super.units, required super.type});
  Monosaccharide.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}