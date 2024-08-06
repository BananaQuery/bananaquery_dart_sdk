import 'package:flutter/material.dart';

typedef OnTap = Function(bool);

class SelectableContainer extends StatelessWidget {
  SelectableContainer({this.isSelected = false, this.onTap, this.child});

  final bool isSelected;
  final OnTap? onTap;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;

    return InkWell(
        onTap: () {
          onTap?.call(isSelected);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
                color: isSelected ? primaryColor : Colors.black12, width: 3.0),
          ),
          child: child,
        ));
  }
}
