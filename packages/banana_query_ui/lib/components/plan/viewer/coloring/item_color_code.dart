import 'package:banana_query_core/nutritional_entity.dart';
import 'package:flutter/material.dart';

enum ColorType { text, background, highlight }
abstract class ItemColorCode {
  Color getItemBackgroundColor(NutritionalEntity item);

  Color getSelectedBackgroundColor(NutritionalEntity item);
  Color getSelectedBorderColor(NutritionalEntity item);
  Color getSelectedTextColor(NutritionalEntity item);

  Color getItemHoverColor(NutritionalEntity item);
  Color getItemTextColor(NutritionalEntity item);
  Color getItemBorderColor(NutritionalEntity item);
}