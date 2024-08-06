import '../simple_carbohydrate.dart';

abstract class Disaccharide extends SimpleCarbohydrate {
  Disaccharide({required super.amount, required super.units, required super.type});
  Disaccharide.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}