import 'package:flutter/material.dart';

class NutrientPill extends StatelessWidget {
  const NutrientPill({ super.key,
    required this.value,
    required this.units,
    this.title,
    this.titleWidth,
    this.valueWidth,
    this.iconTitle,
    this.onClick,
    this.valueBackgroundColor,
    this.titleBackgroundColor,
    this.titleStyle,
    this.valueStyle,
    portionWeight
  })
  : portionWeight = portionWeight ?? 100.0,
    assert(title != null || iconTitle != null);


  final Color? titleBackgroundColor;
  final Color? valueBackgroundColor;

  final VoidCallback? onClick;
  final String? title;
  final double? titleWidth;
  final double? valueWidth;
  final Widget? iconTitle;
  final double value;
  final String units;
  final double portionWeight;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;

  double dynamicWidthForString(String? string, { double minWidth = 30.0 }) {
    return (string?.length ?? 3) * 10.0 + minWidth;
  }

  @override
  Widget build(BuildContext context) {

    Color? defaultBackgroundColor = Theme.of(context).colorScheme.primaryFixedDim;
    Color? titleColor = Theme.of(context).colorScheme.onPrimaryFixed;

    Color? defaultValueBackgroundColor = Theme.of(context).colorScheme.primary;
    Color? onPrimary = Theme.of(context).colorScheme.onPrimary;
    
    double totalWidth = (titleWidth ?? dynamicWidthForString(title)) + (valueWidth ?? dynamicWidthForString(value.toString()));

    final TextStyle defaultTitleStyle = TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: titleColor);
    final TextStyle defaultValueStyle = TextStyle(fontSize: 10, color: onPrimary);

    return InkWell(
      onTap: onClick,
      child: SizedBox(
        width: totalWidth,
        child: Row(
          children: [
            Container(
                width: titleWidth ?? dynamicWidthForString(title, minWidth: 15.0),
                height: 35,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: titleBackgroundColor ?? defaultBackgroundColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10)
                  ),
                ),
                child: Center(
                  child: title != null ? Text(title!, style: titleStyle ?? defaultTitleStyle) : iconTitle!,
                )
            ),
            Container(
                width: valueWidth ?? dynamicWidthForString(value.toString()),
                height: 35,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                  ),
                  color: valueBackgroundColor ?? defaultValueBackgroundColor,
                ),
                child: Center(
                    child: Wrap(
                      children: [
                        Text("${value.toStringAsPrecision(3)} ", style: valueStyle ?? defaultValueStyle),
                        Text(units, style: valueStyle ?? defaultValueStyle, textAlign: TextAlign.center,),
                      ],
                    )
                )
            )
          ],
        ),
      )
    );
  }

}