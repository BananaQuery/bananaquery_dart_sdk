import 'package:banana_query_core/factories/nutrient/nutrient_factory.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/nutrients/macro/carbs/carbohydrate_difference.dart';
import 'package:banana_query_core/nutrients/macro/carbs/complex/polysaccharides/fiber/dietary_fiber.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:banana_query_core/nutrients/macro/proteins/total_protein.dart';
import 'package:banana_query_core/nutrients/micro/minerals/calcium.dart';
import 'package:banana_query_core/nutrients/micro/minerals/copper.dart';
import 'package:banana_query_core/nutrients/micro/minerals/fluoride.dart';
import 'package:banana_query_core/nutrients/micro/minerals/iron.dart';
import 'package:banana_query_core/nutrients/micro/minerals/magnesium.dart';
import 'package:banana_query_core/nutrients/micro/minerals/manganese.dart';
import 'package:banana_query_core/nutrients/micro/minerals/phosphorus.dart';
import 'package:banana_query_core/nutrients/micro/minerals/potassium.dart';
import 'package:banana_query_core/nutrients/micro/minerals/selenium.dart';
import 'package:banana_query_core/nutrients/micro/minerals/sodium.dart';
import 'package:banana_query_core/nutrients/micro/minerals/zinc.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/c/vitamin_c_total_ascorbic_acid.dart';

import '../nutrients/macro/lipids/total/total_lipids.dart';
import '../nutrients/micro/vitamins/fatsoluble/a/vitamin_a_rae.dart';
import '../nutrients/micro/vitamins/fatsoluble/d/vitamin_d_d2_d3.dart';
import '../nutrients/micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_alpha_tocopherol.dart';
import '../nutrients/micro/vitamins/watersoluble/b/b12/vitamin_b_12.dart';
import '../nutrients/micro/vitamins/watersoluble/b/b2/riboflavin.dart';
import '../nutrients/micro/vitamins/watersoluble/b/b3/niacin.dart';
import '../nutrients/micro/vitamins/watersoluble/b/b5/pantothenic_acid.dart';
import '../nutrients/micro/vitamins/watersoluble/b/b6/vitamin_b6.dart';
import '../nutrients/micro/vitamins/watersoluble/b/b9/folate_total.dart';
import '../nutrients/micro/vitamins/watersoluble/b/thiamin/thiamin.dart';
import '../nutrients/nutrient.dart';
import 'macro_totals.dart';

class NutrientTotalsCalculator {
  static final List<String> vitamins = [
    // fat soluble vitamins
    VitaminDD2D3.nutrientType,
    VitaminARAE.nutrientType,
    VitaminEAlphaTocopherol.nutrientType,
    // water soluble vitamins
    Riboflavin.nutrientType, // B2
    Niacin.nutrientType, // B3
    PantothenicAcid.nutrientType, // B5
    VitaminB6.nutrientType, // B6
    FolateTotal.nutrientType, // B9
    VitaminB12.nutrientType, // B12
    Thiamin.nutrientType, // B1
    VitaminCTotalAscorbicAcid.nutrientType // C
  ];

  static final List<String> minerals = [
    Calcium.nutrientType,
    Copper.nutrientType,
    Fluoride.nutrientType,
    Iron.nutrientType,
    Magnesium.nutrientType,
    Manganese.nutrientType,
    Niacin.nutrientType,
    Phosphorus.nutrientType,
    Potassium.nutrientType,
    Riboflavin.nutrientType,
    Selenium.nutrientType,
    Sodium.nutrientType,
    Zinc.nutrientType
  ];

  static MacroTotals getMacros(List<PortionedFood> entries) {
    List<PortionedFood> entriesCopy = List.of(entries);

    final double energyKCalories = entriesCopy
        .expand((entry) => entry.item.nutrients
            .whereType<EnergyNutrient>()
            .where((element) => element.units == EnergyNutrient.measuringUnits)
            .map<double>((e) =>
                e.amount * (entry.quantity * entry.portion.gramWeight / 100)))
        .toList()
        .fold<double>(0.0, (previousValue, element) => previousValue + element);

    final double proteinsGrams = entriesCopy
        .expand((entry) => entry.item.nutrients
            .whereType<TotalProtein>()
            .map<double>((e) =>
                e.amount * (entry.quantity * entry.portion.gramWeight / 100)))
        .toList()
        .fold<double>(0.0, (previousValue, element) => previousValue + element);

    final double fatsGrams = entriesCopy
        .expand((entry) => entry.item.nutrients
            .whereType<TotalLipids>()
            .map<double>((e) =>
                e.amount * (entry.quantity * entry.portion.gramWeight / 100)))
        .toList()
        .fold<double>(0.0, (previousValue, element) => previousValue + element);

    final double carbsGrams = entriesCopy
        .expand((entry) => entry.item.nutrients
            .whereType<CarbohydrateDifference>()
            .map<double>((e) =>
                e.amount * (entry.quantity * entry.portion.gramWeight / 100)))
        .toList()
        .fold<double>(0.0, (previousValue, element) => previousValue + element);

    final double fiberGrams = entriesCopy
        .expand((entry) => entry.item.nutrients
            .whereType<DietaryFiber>()
            .map<double>((e) =>
                e.amount * (entry.quantity * entry.portion.gramWeight / 100)))
        .toList()
        .fold<double>(0.0, (previousValue, element) => previousValue + element);

    return MacroTotals(
      fats: TotalLipids(amount: fatsGrams),
      carbs: CarbohydrateDifference(amount: carbsGrams),
      proteins: TotalProtein(amount: proteinsGrams),
      kilocalories: EnergyNutrient(amount: energyKCalories),
      fiber: DietaryFiber(amount: fiberGrams),
    );
  }

  static num _ruleOfThree(num portionQuantity, num portionGramWeight, num nutrientAmountPer100G) {
    if (nutrientAmountPer100G == 0) {
      return 0;
    }
    num nutrientAmountInPortion =
        (portionGramWeight / 100) * nutrientAmountPer100G * portionQuantity;
    return nutrientAmountInPortion;
  }

  static List<Nutrient> getNutrientTotals<T extends Nutrient>(List<PortionedFood> entries) {
    Map<String, Nutrient> nutrientTotals = {};
    entries.forEach((e) {
      e.getNutrientTotalsWhereType<Nutrient>()?.forEach((element) {
        if (nutrientTotals.containsKey(element.type)) {
          Nutrient nutrientCopy = NutrientFactory.standard()
              .copyWith(element, amount: nutrientTotals[element.type]!.amount + element.amount);
          nutrientTotals[element.type] = nutrientCopy;
        } else {
          nutrientTotals[element.type] = element;
        }
      });
    });

    return nutrientTotals.values.toList();
  }

  static Nutrient? getNutrientTotalByName<T extends Nutrient>(List<PortionedFood> entries, String nutrientType) {
    List<Nutrient> nutrients = getNutrientTotals(entries);
    try {
      return nutrients.firstWhere((element) => element.type == nutrientType);
    } catch (e) {
      return null;
    }
  }
}
