import 'package:flutter/material.dart';

class SecondaryContainer extends StatelessWidget {

  const SecondaryContainer({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final ThemeData parentTheme = Theme.of(context);
    final ColorScheme colorScheme = parentTheme.colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final InputDecorationThemeData inputTheme = Theme.of(context).inputDecorationTheme;
    final IconThemeData iconThemeData = Theme.of(context).iconTheme;
    return Theme(
        data: parentTheme.copyWith(
          textTheme: textTheme,
          primaryTextTheme: textTheme,
          inputDecorationTheme: inputTheme,
          iconTheme: iconThemeData,
        ),
        child: Container(
          child: child,
        )
    );
  }
  
}