import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';

class PlanUpdateConfirmation extends StatelessWidget {
  const PlanUpdateConfirmation({super.key});

  @override
  Widget build(BuildContext context) {
    Color onPrimary = Theme.of(context).colorScheme.onPrimary;
    Color secondary = Theme.of(context).colorScheme.secondary;
    Color onSecondary = Theme.of(context).colorScheme.onSecondary;
    TextStyle displayStyle = Theme.of(context).textTheme.displaySmall!;
    TextStyle titleStyle = Theme.of(context).textTheme.titleMedium!;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).weHaveUpdatedYourMealPlan,
              style: displayStyle,
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(S.of(context).theFoodItemNowMatchesTheDatabase),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 35,
                  width: 80,
                  alignment: Alignment.center,
                  child: Text(
                    S.of(context).finish,
                    style: TextStyle(color: onPrimary),
                  ))),
          const Padding(padding: EdgeInsets.only(right: 20.0)),
        ],
      ),
    );
  }
}
