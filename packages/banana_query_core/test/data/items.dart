import 'dart:convert';
import 'dart:io';

import 'package:banana_query_core/factories/food_factory.dart';
import 'package:banana_query_core/nutritional_entity.dart';

List<NutritionalEntity> GetTestingNutritionalEntitiesFromJson() {

  var currentDirectory = Directory.current.path;

  File file = File('test/data/raw_food_data.txt');

  return file.readAsLinesSync().map((element) {
    Map<String, dynamic> json = jsonDecode(element);
    return FoodFactory.standard().fromJson(json);
  }).toList();
}