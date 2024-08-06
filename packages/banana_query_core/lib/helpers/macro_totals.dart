import 'package:banana_query_core/nutrients/macro/carbs/carbohydrate_difference.dart';
import 'package:banana_query_core/nutrients/macro/carbs/complex/polysaccharides/fiber/dietary_fiber.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:banana_query_core/nutrients/macro/proteins/total_protein.dart';

import '../nutrients/macro/lipids/total/total_lipids.dart';

class MacroTotals {
  MacroTotals({ required this.fats, required this.proteins, required this.carbs, this.fiber, required this.kilocalories });

  TotalLipids fats;
  TotalProtein proteins;
  CarbohydrateDifference carbs;
  DietaryFiber? fiber;
  EnergyNutrient kilocalories;

  MacroTotals.zero():
    fats = TotalLipids(amount: 0.0),
    proteins = TotalProtein(amount: 0.0),
    carbs = CarbohydrateDifference(amount: 0.0),
    kilocalories = EnergyNutrient(amount: 0.0);
}