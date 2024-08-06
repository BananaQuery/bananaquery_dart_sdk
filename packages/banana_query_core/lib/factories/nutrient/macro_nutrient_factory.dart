import 'package:banana_query_core/nutrients/macro/carbs/added_sugars.dart';
import 'package:banana_query_core/nutrients/macro/carbs/carbohydrate_difference.dart';
import 'package:banana_query_core/nutrients/macro/carbs/complex/polysaccharides/fiber/dietary_fiber.dart';
import 'package:banana_query_core/nutrients/macro/carbs/simple/disaccharides/lactose/lactose.dart';
import 'package:banana_query_core/nutrients/macro/carbs/simple/disaccharides/maltose/maltose.dart';
import 'package:banana_query_core/nutrients/macro/carbs/simple/disaccharides/sucrose/sucrose.dart';
import 'package:banana_query_core/nutrients/macro/carbs/simple/monosaccharides/fructose/fructose.dart';
import 'package:banana_query_core/nutrients/macro/carbs/simple/monosaccharides/galactose/galactose.dart';
import 'package:banana_query_core/nutrients/macro/carbs/simple/monosaccharides/glucose/glucose.dart';
import 'package:banana_query_core/nutrients/macro/carbs/total_sugars.dart';
import 'package:banana_query_core/nutrients/macro/energy/energy_nutrient.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_4_0.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/saturated/total_saturated_fatty_acid.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/trans/TFA/tfa_18_1_t.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_14_1.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_15_1.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_16_1.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_16_1c.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_17_1.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_18_1.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_18_1c.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_18_2.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_20_1.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_22_1.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_22_1c.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_24_1_c.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/mono/total_mono_saturated_fatty_acids.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_2.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_2_clas.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_2_n_6_cc.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_2i.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_3.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_3_n_3_ccc_ala.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_3_n_6_ccc.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_20_2_n_6_cc.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_20_3.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_20_3_n_3.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_20_3_n_6.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_20_4.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_22_5_n3_dpa.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_22_6_n3_dha.dart';
import 'package:banana_query_core/nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_2_5_n_3.dart';
import 'package:banana_query_core/nutrients/macro/macro_nutrient.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/arginine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/cysteine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/glutamine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/glycine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/proline.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/conditional/tyrosine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/histidine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/isoleucine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/leucine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/lysine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/methionine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/phenylalanine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/threonine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/tryptophan.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/essential/valine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/alanine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/asparagine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/aspartic_acid.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/glutamic_acid.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/pyrrolisine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/selenocysteine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/aminos/nonessential/serine.dart';
import 'package:banana_query_core/nutrients/macro/proteins/total_protein.dart';

import '../../nutrients/macro/carbs/complex/polysaccharides/starch/starch.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_10_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_12_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_13_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_14_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_15_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_16_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_17_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_18_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_20_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_22_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_24_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_6_0.dart';
import '../../nutrients/macro/lipids/acids/saturated/SFA/saturated_fatty_acid_8_0.dart';
import '../../nutrients/macro/lipids/acids/trans/TFA/tfa_16_1_t.dart';
import '../../nutrients/macro/lipids/acids/trans/TFA/tfa_18_2_t.dart';
import '../../nutrients/macro/lipids/acids/trans/TFA/tfa_18_2_tt.dart';
import '../../nutrients/macro/lipids/acids/trans/TFA/tfa_22_1_t.dart';
import '../../nutrients/macro/lipids/acids/trans/total_trans_fat.dart';
import '../../nutrients/macro/lipids/acids/trans/total_trans_monoenoic.dart';
import '../../nutrients/macro/lipids/acids/trans/total_trans_polyenoic.dart';
import '../../nutrients/macro/lipids/acids/unsaturated/mono/MUFA/mono_unsaturated_fatty_acid_18_1_11t.dart';
import '../../nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_3_i.dart';
import '../../nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_18_4.dart';
import '../../nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_21_5.dart';
import '../../nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_22_4.dart';
import '../../nutrients/macro/lipids/acids/unsaturated/poly/PUFA/poly_unsaturated_fatty_acid_2_4_n_6.dart';
import '../../nutrients/macro/lipids/acids/unsaturated/poly/total_polyunsaturated_fat.dart';
import '../../nutrients/macro/lipids/sterols/beta_sitosterol.dart';
import '../../nutrients/macro/lipids/sterols/campesterol.dart';
import '../../nutrients/macro/lipids/sterols/phytosterol.dart';
import '../../nutrients/macro/lipids/sterols/stigmasterol.dart';
import '../../nutrients/macro/lipids/total/total_lipids.dart';
import '../../nutrients/macro/proteins/aminos/nonessential/hydroxyproline.dart';

typedef MineralSerializer = MacroNutrient Function(Map<String, dynamic> json);

class MacroNutrientFactory {
  Map<String, MineralSerializer> registeredTypes = {};

  MacroNutrientFactory.standard() {
    // --- MINERALS --- //
    // Complex carbs
    registeredTypes[DietaryFiber.nutrientType] = DietaryFiber.fromJson;
    registeredTypes[Starch.nutrientType] = Starch.fromJson;

    // Simple carbs - disaccharides
    registeredTypes[Lactose.nutrientType] = Lactose.fromJson;
    registeredTypes[Maltose.nutrientType] = Maltose.fromJson;
    registeredTypes[Sucrose.nutrientType] = Sucrose.fromJson;

    // Simple carbs - monosaccharides
    registeredTypes[Fructose.nutrientType] = Fructose.fromJson;
    registeredTypes[Galactose.nutrientType] = Galactose.fromJson;
    registeredTypes[Glucose.nutrientType] = Glucose.fromJson;

    // Total carbs
    registeredTypes[AddedSugars.nutrientType] = AddedSugars.fromJson;
    registeredTypes[CarbohydrateDifference.nutrientType] = CarbohydrateDifference.fromJson;
    registeredTypes[TotalSugars.nutrientType] = TotalSugars.fromJson;

    // --- ENERGY --- //
    registeredTypes[EnergyNutrient.nutrientType] = EnergyNutrient.fromJson;

    // --- FATS --- //
    registeredTypes[TotalMonoUnsaturatedFattyAcids.nutrientType] = TotalMonoUnsaturatedFattyAcids.fromJson;
    registeredTypes[TotalPolyunsaturatedFat.nutrientType] = TotalPolyunsaturatedFat.fromJson;
    registeredTypes[TotalSaturatedFattyAcid.nutrientType] = TotalSaturatedFattyAcid.fromJson;
    registeredTypes[TotalLipids.nutrientType] = TotalLipids.fromJson;

    // --- STEROLS --- //
    registeredTypes[BetaSitosterol.nutrientType] = BetaSitosterol.fromJson;
    registeredTypes[Campesterol.nutrientType] = Campesterol.fromJson;
    registeredTypes[Stigmasterol.nutrientType] = Stigmasterol.fromJson;
    registeredTypes[Phytosterol.nutrientType] = Phytosterol.fromJson;

    // --- TRANS FATTY ACIDS --- //
    registeredTypes[TotalTransFat.nutrientType] = TotalTransFat.fromJson;
    registeredTypes[TotalTransMonoenoic.nutrientType] = TotalTransMonoenoic.fromJson;
    registeredTypes[TotalTransPolyenoic.nutrientType] = TotalTransPolyenoic.fromJson;
    registeredTypes[TFA_16_1_t.nutrientType] = TFA_16_1_t.fromJson;
    registeredTypes[TFA_18_1_t.nutrientType] = TFA_18_1_t.fromJson;
    registeredTypes[TFA_18_2_tt.nutrientType] = TFA_18_2_tt.fromJson;
    registeredTypes[TFA_18_2_t.nutrientType] = TFA_18_2_t.fromJson;
    registeredTypes[TFA_22_1_t.nutrientType] = TFA_22_1_t.fromJson;


    // Saturated Fatty Acids
    registeredTypes[SaturatedFatAcid4_0.nutrientType] = SaturatedFatAcid4_0.fromJson;
    registeredTypes[SaturatedFatAcid4_0.nutrientType] = SaturatedFatAcid4_0.fromJson;
    registeredTypes[SaturatedFatAcid6_0.nutrientType] = SaturatedFatAcid6_0.fromJson;
    registeredTypes[SaturatedFatAcid8_0.nutrientType] = SaturatedFatAcid8_0.fromJson;
    registeredTypes[SaturatedFatAcid10_0.nutrientType] = SaturatedFatAcid10_0.fromJson;
    registeredTypes[SaturatedFatAcid12_0.nutrientType] = SaturatedFatAcid12_0.fromJson;
    registeredTypes[SaturatedFatAcid13_0.nutrientType] = SaturatedFatAcid13_0.fromJson;
    registeredTypes[SaturatedFatAcid14_0.nutrientType] = SaturatedFatAcid14_0.fromJson;
    registeredTypes[SaturatedFatAcid15_0.nutrientType] = SaturatedFatAcid15_0.fromJson;
    registeredTypes[SaturatedFatAcid16_0.nutrientType] = SaturatedFatAcid16_0.fromJson;
    registeredTypes[SaturatedFatAcid17_0.nutrientType] = SaturatedFatAcid17_0.fromJson;
    registeredTypes[SaturatedFatAcid18_0.nutrientType] = SaturatedFatAcid18_0.fromJson;
    registeredTypes[SaturatedFatAcid20_0.nutrientType] = SaturatedFatAcid20_0.fromJson;
    registeredTypes[SaturatedFatAcid22_0.nutrientType] = SaturatedFatAcid22_0.fromJson;
    registeredTypes[SaturatedFatAcid24_0.nutrientType] = SaturatedFatAcid24_0.fromJson;

    // Monounsaturated Fatty Acids
    registeredTypes[MonoUnsaturatedFattyAcid14_1.nutrientType] = MonoUnsaturatedFattyAcid14_1.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid15_1.nutrientType] = MonoUnsaturatedFattyAcid15_1.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid16_1.nutrientType] = MonoUnsaturatedFattyAcid16_1.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid16_1c.nutrientType] = MonoUnsaturatedFattyAcid16_1c.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid17_1.nutrientType] = MonoUnsaturatedFattyAcid17_1.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid18_1.nutrientType] = MonoUnsaturatedFattyAcid18_1.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid18_1_11t.nutrientType] = MonoUnsaturatedFattyAcid18_1_11t.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid18_1c.nutrientType] = MonoUnsaturatedFattyAcid18_1c.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid18_2.nutrientType] = MonoUnsaturatedFattyAcid18_2.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid20_1.nutrientType] = MonoUnsaturatedFattyAcid20_1.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid22_1.nutrientType] = MonoUnsaturatedFattyAcid22_1.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid22_1c.nutrientType] = MonoUnsaturatedFattyAcid22_1c.fromJson;
    registeredTypes[MonoUnsaturatedFattyAcid24_1c.nutrientType] = MonoUnsaturatedFattyAcid24_1c.fromJson;

    // Polyunsaturated Fatty Acids
    registeredTypes[PolyUnsaturatedFattyAcid2_4_n6.nutrientType] = PolyUnsaturatedFattyAcid2_4_n6.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid2_5_n3.nutrientType] = PolyUnsaturatedFattyAcid2_5_n3.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_2.nutrientType] = PolyUnsaturatedFattyAcid18_2.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_2i.nutrientType] = PolyUnsaturatedFattyAcid18_2i.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_2_clas.nutrientType] = PolyUnsaturatedFattyAcid18_2_clas.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_2_n6_cc.nutrientType] = PolyUnsaturatedFattyAcid18_2_n6_cc.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_3.nutrientType] = PolyUnsaturatedFattyAcid18_3.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_3i.nutrientType] = PolyUnsaturatedFattyAcid18_3i.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_3_n3_ccc_ALA.nutrientType] = PolyUnsaturatedFattyAcid18_3_n3_ccc_ALA.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_3_n6_ccc.nutrientType] = PolyUnsaturatedFattyAcid18_3_n6_ccc.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid18_4.nutrientType] = PolyUnsaturatedFattyAcid18_4.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid20_2_n6_cc.nutrientType] = PolyUnsaturatedFattyAcid20_2_n6_cc.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid20_3.nutrientType] = PolyUnsaturatedFattyAcid20_3.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid20_3_n3.nutrientType] = PolyUnsaturatedFattyAcid20_3_n3.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid20_3_n6.nutrientType] = PolyUnsaturatedFattyAcid20_3_n6.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid20_4.nutrientType] = PolyUnsaturatedFattyAcid20_4.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid21_5.nutrientType] = PolyUnsaturatedFattyAcid21_5.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid22_4.nutrientType] = PolyUnsaturatedFattyAcid22_4.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid22_5_n3_dpa.nutrientType] = PolyUnsaturatedFattyAcid22_5_n3_dpa.fromJson;
    registeredTypes[PolyUnsaturatedFattyAcid22_6_n3_dha.nutrientType] = PolyUnsaturatedFattyAcid22_6_n3_dha.fromJson;

    // Essential Amino Acids
    registeredTypes[Histidine.nutrientType] = Histidine.fromJson;
    registeredTypes[Isoleucine.nutrientType] = Isoleucine.fromJson;
    registeredTypes[Leucine.nutrientType] = Leucine.fromJson;
    registeredTypes[Lysine.nutrientType] = Lysine.fromJson;
    registeredTypes[Methionine.nutrientType] = Methionine.fromJson;
    registeredTypes[Phenylalanine.nutrientType] = Phenylalanine.fromJson;
    registeredTypes[Threonine.nutrientType] = Threonine.fromJson;
    registeredTypes[Tryptophan.nutrientType] = Tryptophan.fromJson;
    registeredTypes[Valine.nutrientType] = Valine.fromJson;

    // Conditionally Essential Amino Acids
    registeredTypes[Arginine.nutrientType] = Arginine.fromJson;
    registeredTypes[Cystine.nutrientType] = Cystine.fromJson;
    registeredTypes[Glutamine.nutrientType] = Glutamine.fromJson;
    registeredTypes[Glycine.nutrientType] = Glycine.fromJson;
    registeredTypes[Proline.nutrientType] = Proline.fromJson;
    registeredTypes[Tyrosine.nutrientType] = Tyrosine.fromJson;

    // Non-Essential Amino Acids
    registeredTypes[Alanine.nutrientType] = Alanine.fromJson;
    registeredTypes[Asparagine.nutrientType] = Asparagine.fromJson;
    registeredTypes[AsparticAcid.nutrientType] = AsparticAcid.fromJson;
    registeredTypes[GlutamicAcid.nutrientType] = GlutamicAcid.fromJson;
    registeredTypes[Hydroxyproline.nutrientType] = Hydroxyproline.fromJson;
    registeredTypes[Pyrrolisine.nutrientType] = Pyrrolisine.fromJson;
    registeredTypes[Selenocysteine.nutrientType] = Selenocysteine.fromJson;
    registeredTypes[Serine.nutrientType] = Serine.fromJson;

    // --- PROTEINS --- //
    registeredTypes[TotalProtein.nutrientType] = TotalProtein.fromJson;
  }

  MacroNutrientFactory.empty() {}

  void registerType(String type, MineralSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  MacroNutrient fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null) {
      throw Exception("Unknown mineral type: $type. Did you maybe forget to register with 'mineralFactory.registerType($type, ...)'");
    }
    return serializer.call(json);
  }
}
