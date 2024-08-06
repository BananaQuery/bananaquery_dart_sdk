import '../../vitamin.dart';

/**
 * Vitamin E comes in 8 chemical compositions
 * (alpha-, beta-, gamma-, and delta-tocopherol and alpha-, beta-, gamma-, and delta-tocotrienol)
 *
 * the alpha tocopherol is the only that is relevant for human consumption.
 * */
abstract class VitaminE extends Vitamin {
  VitaminE({required super.type, required super.amount, required super.units});
  VitaminE.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}