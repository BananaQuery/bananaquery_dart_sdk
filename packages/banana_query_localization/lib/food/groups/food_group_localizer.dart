import '../../generated/l10n.dart';

class FoodGroupLocalizer {
  static String localize(String foodGroup) {
    switch(foodGroup) {
      case 'baked products': { return S.current.bakedProducts; }
      case 'snacks': { return S.current.snacks; }
      case 'sweets': { return S.current.sweets; }
      case 'vegetables and vegetable products': { return S.current.vegetablesAndVegetableProducts; }
      case 'american indian/alaska native foods': { return S.current.americanIndianalaskaNativeFoods; }
      case 'restaurant foods': { return S.current.restaurantFoods; }
      case 'beverages': { return S.current.beverages; }
      case 'fats and oils': { return S.current.fatsAndOils; }
      case 'sausages and luncheon meats': { return S.current.sausagesAndLuncheonMeats; }
      case 'dairy and egg products': { return S.current.dairyAndEggProducts; }
      case 'baby foods': { return S.current.babyFoods; }
      case 'poultry products': { return S.current.poultryProducts; }
      case 'pork products': { return S.current.porkProducts; }
      case 'breakfast cereals': { return S.current.breakfastCereals; }
      case 'legumes and legume products': { return S.current.legumesAndLegumeProducts; }
      case 'finfish and shellfish products': { return S.current.finfishAndShellfishProducts; }
      case 'fruits and fruit juices': { return S.current.fruitsAndFruitJuices; }
      case 'cereal grains and pasta': { return S.current.cerealGrainsAndPasta; }
      case 'nut and seed products': { return S.current.nutAndSeedProducts; }
      case 'beef products': { return S.current.beefProducts; }
      case 'meals, entrees, and side dishes': { return S.current.mealsEntreesAndSideDishes; }
      case 'fast foods': { return S.current.fastFoods; }
      case 'spices and herbs': { return S.current.spicesAndHerbs; }
      case 'soups, sauces, and gravies': { return S.current.soupsSaucesAndGravies; }
      case 'lamb, veal, and game products': { return S.current.lambVealAndGameProducts; }
    }
    return foodGroup;
  }
}