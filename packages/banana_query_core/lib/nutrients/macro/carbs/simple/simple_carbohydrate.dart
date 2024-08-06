import '../carbohydrate.dart';

abstract class SimpleCarbohydrate extends Carbohydrate {
  SimpleCarbohydrate({ required super.amount, required super.units, required super.type});
  SimpleCarbohydrate.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}