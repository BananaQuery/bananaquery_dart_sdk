// library nutrition_facts_label;
//
// import 'package:banana_query_core/foods/portioned_food.dart';
// import 'package:banana_query_core/nutrients/micro/vitamins/fatsoluble/d/vitamin_d_d2_d3.dart';
// import 'package:banana_query_core/nutrients/nutrient.dart';
// import 'package:flutter/material.dart';
//
// class _DailyValue {
//   _DailyValue({this.nutrientContent, this.percentage});
//   Nutrient? nutrientContent;
//   num? percentage;
// }
//
// /// A Calculator.
// class NutritionFactsLabel extends StatelessWidget {
//   const NutritionFactsLabel({
//     super.key,
//     required this.food,
//     this.borderColor,
//   });
//   final PortionedFood food;
//   final Color? borderColor;
//
//   _DailyValue _getDailyValue(String nutrientType) {
//     try {
//       Nutrient? nutrientContent = food.nutrientTotals.firstWhere((n) => n.type == nutrientType);
//       Unit? dailyValue = DailyValues.adults[nutrientType];
//       if (nutrientContent != null) {
//         if (dailyValue != null) {
//           Unit percentage = (nutrientContent / dailyValue) * 100;
//           return _DailyValue(
//               nutrientContent: nutrientContent, percentage: percentage.value);
//         }
//         return _DailyValue(nutrientContent: nutrientContent);
//       }
//     }
//
//
//     return _DailyValue(nutrientContent: Gram(value: 0), percentage: 0.0);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Color defaultBorderColor =
//         Theme.of(context).textTheme.headline3?.color ?? Colors.black;
//     TextStyle boldText = Theme.of(context)
//         .textTheme
//         .bodyText1!
//         .copyWith(fontWeight: FontWeight.w800);
//     TextStyle regularText = Theme.of(context)
//         .textTheme
//         .bodyText1!
//         .copyWith(fontWeight: FontWeight.normal);
//
//     Unit? calories = food.nutrientAmounts[EnergyNutrient.nutrientType];
//     var dailyFats = _getDailyValue(TotalLipids.nutrientType);
//     var dailySaturated = _getDailyValue(TotalSaturatedFat.nutrientType);
//     var dailyTrans = _getDailyValue(TotalTransFat.nutrientType);
//
//     var cholesterol = _getDailyValue(Cholesterol.nutrientType);
//     var sodium = _getDailyValue(Sodium.nutrientType);
//     var totalCarbs = _getDailyValue(CarbohydrateDifference.nutrientType);
//     var fiber = _getDailyValue(TotalFiber.nutrientType);
//     var totalSugars = _getDailyValue(TotalSugars.nutrientType);
//     var addedSugars = _getDailyValue(AddedSugars.nutrientType);
//     var protein = _getDailyValue(TotalProtein.nutrientType);
//     var vitaminD = _getDailyValue(VitaminDD2D3.nutrientType);
//     var calcium = _getDailyValue(Calcium.nutrientType);
//     var iron = _getDailyValue(Iron.nutrientType);
//     var potassium = _getDailyValue(Potassium.nutrientType);
//     var vitaminC = _getDailyValue(VitaminCTotalAscorbicAcid.nutrientType);
//
//     return Container(
//       width: 300,
//       height: 600,
//       padding: EdgeInsets.symmetric(horizontal: 7.0, vertical: 7.0),
//       decoration: BoxDecoration(
//           border: Border.all(color: borderColor ?? defaultBorderColor)),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Nutrition Facts',
//                   style: Theme.of(context)
//                       .textTheme
//                       .headline3!
//                       .copyWith(fontWeight: FontWeight.w900)),
//             ],
//           ),
//           Divider(color: defaultBorderColor),
//           Text('1 Serving per container', style: boldText),
//           Text(
//               'Serving size      ${food.portion.title} (${food.portion.gramWeight}g)',
//               style: boldText),
//           Divider(thickness: 10.0, color: defaultBorderColor),
//           Text('Amount per serving', style: boldText),
//           Row(
//             children: [
//               Text('Calories', style: boldText.copyWith(fontSize: 24)),
//               Expanded(
//                   child: Text(
//                 calories?.toStringAsFixed(2) ?? "?",
//                 style: boldText.copyWith(fontSize: 24),
//                 textAlign: TextAlign.end,
//               )),
//             ],
//           ),
//           Divider(thickness: 5.0, color: defaultBorderColor),
//           Align(
//             alignment: Alignment.centerRight,
//             child: Text('% Daily value ', style: boldText),
//           ),
//           Expanded(
//             child: ListView(children: [
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Total fat ${dailyFats.nutrientContent?.toGrams().value.toStringAsFixed(2)}g',
//                       style: boldText),
//                   Expanded(
//                       child: Text(
//                           '${dailyFats.percentage?.toStringAsFixed(1)}%',
//                           style: boldText,
//                           textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       '  Saturated fat ${dailySaturated.nutrientContent?.toGrams().value.toStringAsFixed(2)}g',
//                       style: regularText),
//                   Expanded(
//                       child: Text(
//                           '${dailySaturated.percentage?.toStringAsFixed(1)}%',
//                           style: regularText,
//                           textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Text(
//                   '  Trans fat ${dailyTrans.nutrientContent?.toGrams().value.toStringAsFixed(2)}g',
//                   style: regularText),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Cholesterol ${cholesterol.nutrientContent?.toMilligrams().value.toStringAsFixed(2)}mg',
//                       style: boldText),
//                   Expanded(
//                       child: Text(
//                           '${cholesterol.percentage?.toStringAsFixed(1)}%',
//                           style: regularText,
//                           textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Sodium ${sodium.nutrientContent?.toMilligrams().value.toStringAsFixed(2)}mg',
//                       style: boldText),
//                   Expanded(
//                       child: Text('${sodium.percentage?.toStringAsFixed(1)}%',
//                           style: regularText, textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Total Carbohydrates ${totalCarbs.nutrientContent?.toGrams().value.toStringAsFixed(0)}g',
//                       style: boldText),
//                   Expanded(
//                       child: Text(
//                           '${totalCarbs.percentage?.toStringAsFixed(1)}%',
//                           style: regularText,
//                           textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       '  Dietary Fiber ${totalCarbs.nutrientContent?.toGrams().value.toStringAsFixed(0)}g',
//                       style: regularText),
//                   Expanded(
//                       child: Text('${fiber.percentage?.toStringAsFixed(1)}%',
//                           style: regularText, textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       '  Total Sugars ${totalSugars.nutrientContent?.toGrams().value.toStringAsFixed(0)}g',
//                       style: regularText),
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       '    Includes ${addedSugars.nutrientContent?.toGrams().value.toStringAsFixed(0)}g added sugars',
//                       style: regularText),
//                   Expanded(
//                       child: Text(
//                           '${addedSugars.percentage?.toStringAsFixed(1)}%',
//                           style: regularText,
//                           textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Text(
//                   'Protein ${protein.nutrientContent?.toGrams().value.toStringAsFixed(0)}g',
//                   style: boldText),
//               Divider(thickness: 10.0, color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Vitamin D ${vitaminD.nutrientContent?.toMicrograms().value.toStringAsFixed(0)} mcg',
//                       style: boldText),
//                   Expanded(
//                       child: Text('${vitaminD.percentage?.toStringAsFixed(1)}%',
//                           style: regularText, textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Calcium ${calcium.nutrientContent?.toMicrograms().value.toStringAsFixed(0)} mcg',
//                       style: boldText),
//                   Expanded(
//                       child: Text('${calcium.percentage?.toStringAsFixed(1)}%',
//                           style: regularText, textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Iron ${iron.nutrientContent?.toMicrograms().value.toStringAsFixed(0)} mcg',
//                       style: boldText),
//                   Expanded(
//                       child: Text('${iron.percentage?.toStringAsFixed(1)}%',
//                           style: regularText, textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Potassium ${potassium.nutrientContent?.toMicrograms().value.toStringAsFixed(0)} mcg',
//                       style: boldText),
//                   Expanded(
//                       child: Text(
//                           '${potassium.percentage?.toStringAsFixed(1)}%',
//                           style: regularText,
//                           textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(color: defaultBorderColor),
//               Row(
//                 children: [
//                   Text(
//                       'Vitamin C ${vitaminC.nutrientContent?.toMicrograms().value.toStringAsFixed(0)} mcg',
//                       style: boldText),
//                   Expanded(
//                       child: Text('${vitaminC.percentage?.toStringAsFixed(1)}%',
//                           style: regularText, textAlign: TextAlign.end))
//                 ],
//               ),
//               Divider(thickness: 5.0, color: defaultBorderColor),
//               Text(
//                 '* The % Daily Value (DV) tells you how much a nutrient in a serving of food contributes to a daily diet. 2,000 calories a day is used for general nutrition advice.',
//                 style: regularText,
//               ),
//               Divider(color: defaultBorderColor),
//               Text(
//                 'Calories per gram:',
//                 style: regularText,
//               ),
//               Text(
//                 'Fat 9 • Carbohydrate 4 • Protein 4',
//                 style: regularText,
//               )
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }
