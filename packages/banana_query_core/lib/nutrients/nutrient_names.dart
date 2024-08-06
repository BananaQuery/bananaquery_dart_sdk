import 'macro/carbs/carbohydrate_difference.dart';
import 'macro/carbs/complex/polysaccharides/fiber/dietary_fiber.dart';
import 'macro/energy/energy_nutrient.dart';
import 'macro/lipids/total/total_lipids.dart';
import 'macro/proteins/total_protein.dart';
import 'micro/minerals/calcium.dart';
import 'micro/minerals/copper.dart';
import 'micro/minerals/fluoride.dart';
import 'micro/minerals/iron.dart';
import 'micro/minerals/magnesium.dart';
import 'micro/minerals/manganese.dart';
import 'micro/minerals/phosphorus.dart';
import 'micro/minerals/potassium.dart';
import 'micro/minerals/selenium.dart';
import 'micro/minerals/sodium.dart';
import 'micro/minerals/zinc.dart';
import 'micro/vitamins/fatsoluble/a/vitamin_a_iu.dart';
import 'micro/vitamins/fatsoluble/a/vitamin_a_rae.dart';
import 'micro/vitamins/fatsoluble/d/vitamin_d_d2.dart';
import 'micro/vitamins/fatsoluble/d/vitamin_d_d2_d3.dart';
import 'micro/vitamins/fatsoluble/d/vitamin_d_d3.dart';
import 'micro/vitamins/fatsoluble/d/vitamin_d_iu.dart';
import 'micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_alpha_tocopherol.dart';
import 'micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_beta_tocopherol.dart';
import 'micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_delta_tocopherol.dart';
import 'micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_gamma_tocopherol.dart';
import 'micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_alpha_tocotrienol.dart';
import 'micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_beta_tocotrienol.dart';
import 'micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_delta_tocotrienol.dart';
import 'micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_gamma_tocotrienol.dart';
import 'micro/vitamins/fatsoluble/e/vitamin_e_added.dart';
import 'micro/vitamins/fatsoluble/k/vitamin_k1_dihydrophylloquinone.dart';
import 'micro/vitamins/fatsoluble/k/vitamin_k1_phylloquinone.dart';
import 'micro/vitamins/fatsoluble/k/vitamin_k2_menaquinone.dart';
import 'micro/vitamins/watersoluble/b/b12/vitamin_b12_added.dart';
import 'micro/vitamins/watersoluble/b/b12/vitamin_b_12.dart';
import 'micro/vitamins/watersoluble/b/b2/riboflavin.dart';
import 'micro/vitamins/watersoluble/b/b3/niacin.dart';
import 'micro/vitamins/watersoluble/b/b5/pantothenic_acid.dart';
import 'micro/vitamins/watersoluble/b/b6/vitamin_b6.dart';
import 'micro/vitamins/watersoluble/b/b9/folate_dfe.dart';
import 'micro/vitamins/watersoluble/b/b9/folate_food.dart';
import 'micro/vitamins/watersoluble/b/b9/folate_total.dart';
import 'micro/vitamins/watersoluble/b/b9/folic_acid.dart';
import 'micro/vitamins/watersoluble/b/thiamin/thiamin.dart';
import 'micro/vitamins/watersoluble/c/vitamin_c_total_ascorbic_acid.dart';

class NutrientNames {
  static final List<String> nutrientTypes = [
    // MACROS
    EnergyNutrient.nutrientType,
    CarbohydrateDifference.nutrientType,
    TotalLipids.nutrientType,
    TotalProtein.nutrientType,
    DietaryFiber.nutrientType,
    // MINERALS
    Calcium.nutrientType,
    Copper.nutrientType,
    Fluoride.nutrientType,
    Iron.nutrientType,
    Magnesium.nutrientType,
    Manganese.nutrientType,
    Phosphorus.nutrientType,
    Potassium.nutrientType,
    Selenium.nutrientType,
    Sodium.nutrientType,
    Zinc.nutrientType,
    // VITAMINS
    VitaminAIU.nutrientType,
    VitaminARAE.nutrientType,
    VitaminDD2.nutrientType,
    VitaminDD2D3.nutrientType,
    VitaminDD3.nutrientType,
    VitaminDIU.nutrientType,
    VitaminEAlphaTocopherol.nutrientType,
    VitaminEBetaTocopherol.nutrientType,
    VitaminEDeltaTocopherol.nutrientType,
    VitaminEGammaTocopherol.nutrientType,
    VitaminEAlphaTocotrienol.nutrientType,
    VitaminEBetaTocotrienol.nutrientType,
    VitaminEDeltaTocotrienol.nutrientType,
    VitaminEGammaTocotrienol.nutrientType,
    VitaminEAdded.nutrientType,
    VitaminK1Dihydrophylloquinone.nutrientType,
    VitaminK1Phylloquinone.nutrientType,
    VitaminK2Menaquinone.nutrientType,
    Riboflavin.nutrientType,
    Niacin.nutrientType,
    PantothenicAcid.nutrientType,
    VitaminB6.nutrientType,
    FolateDFE.nutrientType,
    FolateFood.nutrientType,
    FolateTotal.nutrientType,
    FolicAcid.nutrientType,
    VitaminB12Added.nutrientType,
    VitaminB12.nutrientType,
    Thiamin.nutrientType,
    VitaminCTotalAscorbicAcid.nutrientType
  ];

  static final List<String> macros = [
    EnergyNutrient.nutrientType,
    CarbohydrateDifference.nutrientType,
    TotalLipids.nutrientType,
    TotalProtein.nutrientType,
    DietaryFiber.nutrientType,
  ];

  static final List<String> vitamins = [
    VitaminAIU.nutrientType,
    VitaminARAE.nutrientType,
    VitaminDD2.nutrientType,
    VitaminDD2D3.nutrientType,
    VitaminDD3.nutrientType,
    VitaminDIU.nutrientType,
    VitaminEAlphaTocopherol.nutrientType,
    VitaminEBetaTocopherol.nutrientType,
    VitaminEDeltaTocopherol.nutrientType,
    VitaminEGammaTocopherol.nutrientType,
    VitaminEAlphaTocotrienol.nutrientType,
    VitaminEBetaTocotrienol.nutrientType,
    VitaminEDeltaTocotrienol.nutrientType,
    VitaminEGammaTocotrienol.nutrientType,
    VitaminEAdded.nutrientType,
    VitaminK1Dihydrophylloquinone.nutrientType,
    VitaminK1Phylloquinone.nutrientType,
    VitaminK2Menaquinone.nutrientType,
    Riboflavin.nutrientType,
    Niacin.nutrientType,
    PantothenicAcid.nutrientType,
    VitaminB6.nutrientType,
    FolateDFE.nutrientType,
    FolateFood.nutrientType,
    FolateTotal.nutrientType,
    FolicAcid.nutrientType,
    VitaminB12Added.nutrientType,
    VitaminB12.nutrientType,
    Thiamin.nutrientType,
    VitaminCTotalAscorbicAcid.nutrientType
  ];

  static final List<String> minerals = [
    Calcium.nutrientType,
    Copper.nutrientType,
    Fluoride.nutrientType,
    Iron.nutrientType,
    Magnesium.nutrientType,
    Manganese.nutrientType,
    Phosphorus.nutrientType,
    Potassium.nutrientType,
    Selenium.nutrientType,
    Sodium.nutrientType,
    Zinc.nutrientType,
  ];

  static List<String> get microNutrients => vitamins + minerals;
}