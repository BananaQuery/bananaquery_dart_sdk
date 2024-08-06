import 'package:banana_query_localization/generated/l10n.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MacroNutrientRatios extends StatelessWidget {
  const MacroNutrientRatios({Key? key, required this.dailyMacros }) : super(key: key);

  static const proteinsColor = Color(0xff632af2);
  static const carbsColor = Color(0xffffb3ba);
  static const fatsColor = Color(0xff578eff);
  static const betweenSpace = 0.01;
  static const List<String> macroTitles = ['proteins', 'carbs', 'fats'];

  final Map<String, Map<String, double>> dailyMacros;

  BarChartGroupData generateGroupData(
      int x, double proteins, double carbs, double fats) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: proteins,
          color: proteinsColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: proteins + betweenSpace,
          toY: proteins + betweenSpace + carbs,
          color: fatsColor,
          width: 5,
        ),
        BarChartRodData(
          fromY: proteins + betweenSpace + carbs + betweenSpace,
          toY: proteins + betweenSpace + carbs + betweenSpace + fats,
          color: carbsColor,
          width: 5,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.only(top: 18, left: 20, right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).planEditorViewMacroNutrients,
              style: const TextStyle(
                color: Color(0xff171547),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // LegendsListWidget(
            //   legends: [
            //     Legend("Pilates", proteinsColor),
            //     Legend("Quick workouts", fatsColor),
            //     Legend("Cycling", carbsColor),
            //   ],
            // ),
            const SizedBox(height: 14),
            AspectRatio(
              aspectRatio: 1.35,
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceBetween,
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),

                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false)
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false)
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 8,
                        getTitlesWidget: (index, titleMeta) {
                          String title = dailyMacros.keys.toList()[index.toInt()][0].toUpperCase();
                          return Text(title,
                            style: const TextStyle(
                              color: Color(0xff787694),
                              fontSize: 10,
                            ),
                          );
                        }
                      ),
                    )
                  ),
                  barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        String day = dailyMacros.keys.toList()[groupIndex];
                        String macroName = macroTitles[rodIndex];
                        double total = 0;
                        double macroValue = dailyMacros[day]![macroName]!;
                        dailyMacros[day]!.forEach((key, value) {
                          total += value;
                        });

                        double percentage = 0;
                        if (total > 0) {
                          percentage = macroValue / total;
                        }
                        return BarTooltipItem(
                          '$macroName\n',
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '${(percentage * 100).round()}%',
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      }
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  gridData: FlGridData(show: false),
                  barGroups: List.generate(dailyMacros.keys.length, (index) {
                      List<String> keys = dailyMacros.keys.toList();
                      String day = keys[index];

                      double proteins = dailyMacros[day]!['proteins']!;
                      double carbs = dailyMacros[day]!['carbs']!;
                      double fats = dailyMacros[day]!['fats']!;
                      double total = proteins + carbs + fats;

                      return generateGroupData(index,
                          total > 0 ? proteins/total : 0.0,
                          total > 0 ? carbs/total : 0.0,
                          total > 0 ? fats/total : 0.0,
                      );
                    }
                  ),
                  maxY: 1 + (betweenSpace * 3),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}