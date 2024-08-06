import '../complex_carbohydrate.dart';

abstract class Polysaccharides extends ComplexCarbohydrate {
  Polysaccharides({required super.amount, required super.units, required super.type });
  Polysaccharides.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}