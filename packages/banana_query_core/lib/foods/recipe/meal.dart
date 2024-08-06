import '../../nutritional_entity.dart';

abstract class IMeal extends NutritionalEntity {
  String get type;
  String get name;
  List<NutritionalEntity> get ingredients;
}