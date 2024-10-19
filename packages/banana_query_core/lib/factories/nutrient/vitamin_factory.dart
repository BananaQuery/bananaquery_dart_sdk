import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/cryptoxanthin_beta.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/lutein_zeaxanthin.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/lycopene.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/retinoids/retinol/retinol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/vitamin_a_iu.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/vitamin_a_rae.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/d/vitamin_d_d2.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/d/vitamin_d_d2_d3.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/d/vitamin_d_iu.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_alpha_tocopherol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_beta_tocopherol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_delta_tocopherol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocopherol/vitamin_e_gamma_tocopherol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_alpha_tocotrienol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_beta_tocotrienol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_delta_tocotrienol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/e/tocotrienol/vitamin_e_gamma_tocotrienol.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/k/vitamin_k1_dihydrophylloquinone.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/k/vitamin_k2_menaquinone.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/vitamin.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b12/vitamin_b12_added.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b12/vitamin_b_12.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b5/pantothenic_acid.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b6/vitamin_b6.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b9/folate_dfe.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b9/folate_food.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b9/folate_total.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/watersoluble/b/b9/folic_acid.dart';
import '../../nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/carotene_alpha.dart';
import '../../nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/carotene_beta.dart';
import '../../nutrients/micro/vitamins/fatsoluble/d/vitamin_d_d3.dart';
import '../../nutrients/micro/vitamins/fatsoluble/e/vitamin_e_added.dart';
import '../../nutrients/micro/vitamins/fatsoluble/k/vitamin_k1_phylloquinone.dart';
import '../../nutrients/micro/vitamins/watersoluble/b/b2/riboflavin.dart';
import '../../nutrients/micro/vitamins/watersoluble/b/b3/niacin.dart';
import '../../nutrients/micro/vitamins/watersoluble/b/thiamin/thiamin.dart';
import '../../nutrients/micro/vitamins/watersoluble/c/vitamin_c_total_ascorbic_acid.dart';

typedef VitaminSerializer = Vitamin Function(Map<String, dynamic> json);

class VitaminFactory {
  Map<String, VitaminSerializer> registeredTypes = {};

  // When no serializer matches the registered serializers then the default
  // serializer is used.
  VitaminSerializer? defaultSerializer;

  VitaminFactory.standard() {
    // --- Vitamin A --- //
    registeredTypes[VitaminAIU.nutrientType] = VitaminAIU.fromJson;
    registeredTypes[VitaminARAE.nutrientType] = VitaminARAE.fromJson;

    // Carotenoids
    registeredTypes[CaroteneAlpha.nutrientType] = CaroteneAlpha.fromJson;
    registeredTypes[CaroteneBeta.nutrientType] = CaroteneBeta.fromJson;
    registeredTypes[CryptoxanthinBeta.nutrientType] =
        CryptoxanthinBeta.fromJson;
    registeredTypes[LuteinZeaxanthin.nutrientType] = LuteinZeaxanthin.fromJson;
    registeredTypes[Lycopene.nutrientType] = Lycopene.fromJson;

    // Retinoids
    registeredTypes[Retinol.nutrientType] = Retinol.fromJson;

    registeredTypes[VitaminDD2.nutrientType] = VitaminDD2.fromJson;
    registeredTypes[VitaminDD2D3.nutrientType] = VitaminDD2D3.fromJson;
    registeredTypes[VitaminDD3.nutrientType] = VitaminDD3.fromJson;
    registeredTypes[VitaminDIU.nutrientType] = VitaminDIU.fromJson;

    registeredTypes[VitaminEAlphaTocopherol.nutrientType] =
        VitaminEAlphaTocopherol.fromJson;
    registeredTypes[VitaminEBetaTocopherol.nutrientType] =
        VitaminEBetaTocopherol.fromJson;
    registeredTypes[VitaminEDeltaTocopherol.nutrientType] =
        VitaminEDeltaTocopherol.fromJson;
    registeredTypes[VitaminEGammaTocopherol.nutrientType] =
        VitaminEGammaTocopherol.fromJson;

    registeredTypes[VitaminEAlphaTocotrienol.nutrientType] =
        VitaminEAlphaTocotrienol.fromJson;
    registeredTypes[VitaminEBetaTocotrienol.nutrientType] =
        VitaminEBetaTocotrienol.fromJson;
    registeredTypes[VitaminEDeltaTocotrienol.nutrientType] =
        VitaminEDeltaTocotrienol.fromJson;
    registeredTypes[VitaminEGammaTocotrienol.nutrientType] =
        VitaminEGammaTocotrienol.fromJson;

    registeredTypes[VitaminEAdded.nutrientType] = VitaminEAdded.fromJson;

    registeredTypes[VitaminK1Dihydrophylloquinone.nutrientType] =
        VitaminK1Dihydrophylloquinone.fromJson;
    registeredTypes[VitaminK1Phylloquinone.nutrientType] =
        VitaminK1Phylloquinone.fromJson;
    registeredTypes[VitaminK2Menaquinone.nutrientType] =
        VitaminK2Menaquinone.fromJson;

    // ---- Vitamin B's ---- //
    registeredTypes[Riboflavin.nutrientType] = Riboflavin.fromJson;
    registeredTypes[Niacin.nutrientType] = Niacin.fromJson;
    registeredTypes[PantothenicAcid.nutrientType] = PantothenicAcid.fromJson;
    registeredTypes[VitaminB6.nutrientType] = VitaminB6.fromJson;
    registeredTypes[FolateDFE.nutrientType] = FolateDFE.fromJson;
    registeredTypes[FolateFood.nutrientType] = FolateFood.fromJson;
    registeredTypes[FolateTotal.nutrientType] = FolateTotal.fromJson;
    registeredTypes[FolicAcid.nutrientType] = FolicAcid.fromJson;

    registeredTypes[VitaminB12.nutrientType] = VitaminB12.fromJson;
    registeredTypes[VitaminB12Added.nutrientType] = VitaminB12Added.fromJson;

    registeredTypes[Thiamin.nutrientType] = Thiamin.fromJson;

    // ---- Vitamin C ---- //
    registeredTypes[VitaminCTotalAscorbicAcid.nutrientType] =
        VitaminCTotalAscorbicAcid.fromJson;
  }

  VitaminFactory.empty() {}

  void registerType(String type, VitaminSerializer serializer) {
    registeredTypes[type] = serializer;
  }

  Vitamin fromJson(Map<String, dynamic> json) {
    final type = json['type'];
    final serializer = registeredTypes[type];
    if (serializer == null && defaultSerializer == null) {
      throw Exception(
          "Unknown vitamin type: $type. Did you maybe forget to register with \"vitaminFactory.registerType('$type', ...)\"");
    }
    return serializer?.call(json) ?? defaultSerializer!.call(json);
  }
}
