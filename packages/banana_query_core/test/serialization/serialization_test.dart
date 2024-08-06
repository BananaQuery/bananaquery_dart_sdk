import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/factories/food_factory.dart';
import 'package:test/test.dart';

import '../data/items.dart';

void main() {
  group("Serializing and deserializing", () {
  List<NutritionalEntity> dummyItems = GetTestingNutritionalEntitiesFromJson();

    test('String.split() splits the string on the delimiter', () {
      dummyItems.forEach((element) {
        NutritionalEntity food = FoodFactory.standard().fromJson(element.toJson());
        expect(element.nutrients.length, equals(food.nutrients.length));
        expect(element.portions.length, equals(food.portions.length));
        expect(element.name, equals(food.name));
      });
    });

  });
}