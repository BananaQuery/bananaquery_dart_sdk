import 'vitamin_b9.dart';

/// Vitamin B9
///
abstract class Folate extends VitaminB9 {
  Folate({required super.type, required super.amount, required super.units});
  
  Folate.fromJson(Map<String, dynamic> json) : super.fromJson(json);
}