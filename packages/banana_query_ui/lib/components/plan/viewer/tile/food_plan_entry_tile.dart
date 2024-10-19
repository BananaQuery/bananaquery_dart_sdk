import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class FoodPlanEntryTile extends StatelessWidget {
  const FoodPlanEntryTile({
    super.key,
    required this.entry,
    this.trailing,
    this.color,
    this.borderColor = Colors.transparent,
    this.dashPattern = const [1, 0],
    this.titleStyle,
    this.subtitleStyle,
    this.onOpen,
  });

  final Widget? trailing;
  final Color? color;
  final Color borderColor;
  final List<double> dashPattern;
  final PortionedFood entry;
  final VoidCallback? onOpen;

  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, constraints) {
      return Container(
          width: constraints.maxWidth,
          margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 2.5),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            color: color,
          ),
          child: DottedBorder(
            borderType: BorderType.RRect,
            dashPattern: dashPattern,
            color: borderColor,
            radius: const Radius.circular(10.0),
            child: Container(
              width: constraints.maxWidth,
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    entry.item.name ?? "",
                    style: titleStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${entry.quantity} ${entry.portion.title}",
                    style: subtitleStyle,
                    overflow: TextOverflow.clip,
                  ),
                ],
              ),
            ),
          ));
    });
  }
}
