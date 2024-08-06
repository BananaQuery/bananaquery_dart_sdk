import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/carotene_alpha.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/carotene_beta.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/cryptoxanthin_beta.dart';
import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/a/carotenoids/carotene/lutein_zeaxanthin.dart';

import '../vitamin_a.dart';


/// Carotenoids (Provitamin A, found in plant products)
///     - [CaroteneAlpha]
///          Lesser source of Vitamin A; found in carrots, pumpkins, some leafy greens
///     - [CaroteneBeta]
///          Main dietary source of Vitamin A in a plant-based diet; found in carrots, sweet potatoes, spinach
///     - [CryptoxanthinBeta
///          Found in orange and red fruits and vegetables, like oranges and red peppers
///     - [Lycopene] (Non-provitamin A carotenoid)
///          Does not convert to Vitamin A; known for other health benefits; found in tomatoes, watermelon
///     - [LuteinZeaxanthin] (Non-provitamin A carotenoids)
///          Do not convert to Vitamin A; important for eye health; found in leafy greens, egg yolks
abstract class Carotenoid extends VitaminA {
  Carotenoid({required super.type, required super.amount, required super.units});

  Carotenoid.fromJson(Map<String, dynamic> json) :
    super.fromJson(json);
}