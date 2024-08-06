import 'package:banana_query_core/helpers/macro_totals.dart';
import 'package:banana_query_core/nutrients/nutrient.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';

class SectionTotals extends StatelessWidget {
  const SectionTotals({ key,
    required this.totals,
    this.valueStyle,
    this.labelStyle,
    this.padding,
    this.color = const Color(0xFFA5B4B0)}) : super(key: key);

  final MacroTotals? totals;
  final TextStyle? valueStyle;
  final TextStyle? labelStyle;
  final EdgeInsets? padding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    TextStyle defaultValueStyle = Theme.of(context).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onSecondary.withOpacity(.8));
    TextStyle defaultLabelStyle = Theme.of(context).textTheme.bodyMedium!;

    TextStyle usedValueStyle = valueStyle ?? defaultValueStyle;
    TextStyle usedLabelStyle = labelStyle ?? defaultLabelStyle;

    String getValueString(Nutrient? unit) {
      if (unit != null) {
        return unit.amount.round().toString();
      }
      return '?';
    }

    return Container(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 15.0),
        alignment: Alignment.center,
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 35,
                width: 50,
                color: color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${getValueString(totals?.carbs)}g',
                        style: usedValueStyle),
                    Text(S.of(context).carb, style: usedLabelStyle,)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 35,
                width: 50,
                color: color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${getValueString(totals?.proteins)}g', style: usedValueStyle),
                    Text(S.of(context).protein, style: usedLabelStyle,)
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 35,
                width: 50,
                color: color,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('${getValueString(totals?.fats)}g', style: usedValueStyle),
                    Text(S.of(context).fat, style: usedLabelStyle,)
                  ],
                ),
              ),
            ),

            // Container(
            //   height: 35,
            //   width: 50,
            //   color: color,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('60g'),
            //       Text('fiber', style: labelStyle,)
            //     ],
            //   ),
            // ),
            Container(
              height: 35,
              width: 50,
              margin: const EdgeInsets.only(left: 5.0, right: 5.0),
              color: color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${getValueString(totals?.kilocalories)} cal', style: usedValueStyle),
                  Text(S.of(context).energy, style: usedLabelStyle,)
                ],
              ),
            ),
            // Container(
            //   height: 35,
            //   width: 40,
            //   margin: const EdgeInsets.only(left: 15.0),
            //   color: color,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Text('${getValueString(totals?.fiber)}g', style: usedValueStyle),
            //       Text(S.of(context).fiber, style: usedLabelStyle,)
            //     ],
            //   ),
            // ),
          ],
        ),
    );
  }
}