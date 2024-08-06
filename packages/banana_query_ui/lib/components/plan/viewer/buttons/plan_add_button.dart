import 'package:banana_query_localization/generated/l10n.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class PlanAddButton extends StatelessWidget {
  const PlanAddButton({
    this.onTap,
    this.onDoubleTap,
    this.borderColor = Colors.transparent,
    this.dashPattern = const [1,0],
    this.iconColor = Colors.black12,
    this.fontColor = Colors.black26,
    super.key });

  final VoidCallback? onTap;
  final VoidCallback? onDoubleTap;
  final Color borderColor;
  final List<double> dashPattern;

  final Color iconColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 2.5),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: onTap,
            onDoubleTap: onDoubleTap,
            child: DottedBorder(
              borderType: BorderType.RRect,
              color: borderColor,
              radius: const Radius.circular(12.0),
              dashPattern: const [3,5],
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Ionicons.add_circle, color: iconColor),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(S.of(context).addButtonText,
                              style: TextStyle(
                                  color: fontColor
                              )
                          )
                      ),
                    ],
                  ),
                ),
                // child: Text(cell.value.item.name, style: TextStyle(color: Colors.orange),),
              ),
            ),
          )
        )
    );
  }
}