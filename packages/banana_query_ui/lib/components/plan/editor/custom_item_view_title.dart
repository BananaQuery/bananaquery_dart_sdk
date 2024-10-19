import 'dart:ui';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../../dialogs/single_field_dialog.dart';

typedef OnNameChange = Function(String);
typedef ItemViewTitleCallback = Function(BuildContext);

class CustomItemViewTitle extends StatelessWidget {
  const CustomItemViewTitle({
    super.key,
    required this.foodName,
    required this.database,
    required this.planName,
    this.isItemSynced = true,
    this.onNameChange,
    this.onSync,
    this.onImport,
  });

  final String foodName;
  final FoodDatabaseInfo? database;
  final String planName;
  final OnNameChange? onNameChange;
  final ItemViewTitleCallback? onSync;
  final ItemViewTitleCallback? onImport;
  final bool isItemSynced;

  @override
  Widget build(BuildContext context) {
    TextStyle breadcrumbStyle = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(color: Theme.of(context).colorScheme.onSecondary);

    Color primaryColor = Theme.of(context).colorScheme.primary;
    Color onPrimary = Theme.of(context).colorScheme.onPrimary;

    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(foodName),
                  if (onNameChange != null)
                    TextButton(
                        onPressed: () async {
                          String? newFoodName = await showDialog<String>(
                              context: context,
                              builder: (context) {
                                return SingleFieldDialog(
                                  title: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20.0, top: 25.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          // TODO: asthetics replace icon
                                          Icons.question_mark,
                                          color: Colors.black87,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(left: 15.0),
                                        ),
                                        Text(S.of(context).editItem),
                                      ],
                                    ),
                                  ),
                                  initialValue: foodName,
                                  fieldLabel: S.of(context).foodName,
                                );
                              });
                          if (newFoodName != null) {
                            onNameChange?.call(newFoodName);
                          }

                          // setState(() {
                          //   entry = PortionedFood.copyWith(
                          //       item:
                          //           PortionedFood.item.copyWith(name: newFoodName));
                          // });
                        },
                        child: Text(S.of(context).editButtonText)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                  ),
                  SelectableText.rich(TextSpan(children: [
                    TextSpan(text: planName, style: breadcrumbStyle),
                    if (database != null)
                      TextSpan(text: " > ", style: breadcrumbStyle),
                    if (database != null)
                      TextSpan(text: database!.name, style: breadcrumbStyle)
                  ]))
                ],
              )
            ],
          ),
          const Spacer(),
          if (isItemSynced == false)
            Row(
              children: [
                // ElTooltip(
                //   child: Text("asf"),
                //   showModal: false,
                //   content: Text("asf"),
                // ),
                Chip(
                  label: Text(
                    S.of(context).foodItemOutOfSync,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      onSync?.call(context);
                    },
                    tooltip: S.of(context).syncButtonText,
                    icon: Icon(
                      Ionicons.sync_outline,
                      color: primaryColor,
                    )),
              ],
            ),
          if (isItemSynced)
            Icon(
              Ionicons.checkmark_circle_outline,
              color: primaryColor,
              semanticLabel: S.of(context).itemSynced,
            )
        ],
      ),
    );
  }
}
