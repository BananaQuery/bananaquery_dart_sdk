import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:keywi/keywi.dart';

class FoodPlanEditorHelp extends StatefulWidget {
  const FoodPlanEditorHelp({super.key});

  @override
  State<StatefulWidget> createState() {
    return FoodPlanEditorHelpState();
  }
}

class FoodPlanEditorHelpState extends State<FoodPlanEditorHelp> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 300,
      width: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 10.0),
            child: Row(
              children: [
                // IconButton(onPressed: () {}, icon: Icon(Icons.close, size: 14,),),
                Text(
                  S.of(context).keyboardShortcutsText,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.onSurface),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.white60,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).planEditorViewShortcutMoveRightLeft,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).planEditorViewShortcutMoveNextPrevious,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).planEditorViewShortcutExpandShrink,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).planEditorViewShortcutCopy,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).planEditorViewShortcutPaste,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                    Container(
                      height: 30,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        S.of(context).deleteButtonText,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Keywi(
                                activator: const SingleActivator(
                                    LogicalKeyboardKey.arrowRight),
                                height: 30),
                            Keywi(
                              activator: const SingleActivator(
                                  LogicalKeyboardKey.arrowLeft),
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Keywi(
                              activator: const SingleActivator(
                                  LogicalKeyboardKey.arrowDown),
                              height: 30,
                            ),
                            Keywi(
                              activator: const SingleActivator(
                                  LogicalKeyboardKey.arrowUp),
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Keywi(
                              activator: const SingleActivator(
                                  LogicalKeyboardKey.minus),
                              height: 30,
                            ),
                            Keywi(
                              activator:
                                  const SingleActivator(LogicalKeyboardKey.add),
                              height: 30,
                            ),
                          ],
                        ),
                        Keywi(
                          activator: const SingleActivator(
                              LogicalKeyboardKey.keyC,
                              meta: true),
                          height: 30,
                        ),
                        Keywi(
                          activator: const SingleActivator(
                              LogicalKeyboardKey.keyV,
                              meta: true),
                          height: 30,
                        ),
                        Keywi(
                          activator:
                              const SingleActivator(LogicalKeyboardKey.delete),
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
