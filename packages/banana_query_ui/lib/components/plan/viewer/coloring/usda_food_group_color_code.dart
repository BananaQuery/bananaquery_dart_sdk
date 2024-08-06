import 'package:banana_query_core/foods/item/dairy/dairy_product.dart';
import 'package:banana_query_core/foods/item/fruits/fruit_product.dart';
import 'package:banana_query_core/foods/item/grains/grain_product.dart';
import 'package:banana_query_core/foods/item/protein/protein_product.dart';
import 'package:banana_query_core/foods/item/vegetables/vegetable_product.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:flutter/material.dart';

import 'item_color_code.dart';

class USDAFoodGroupColorCode extends ItemColorCode {

  @override
  Color getItemBackgroundColor(NutritionalEntity item) {
    if (item is ProteinProduct) {
      return Colors.deepPurple.shade50;
    } else if (item is DairyProduct) {
      return Colors.blue.shade50;
    } else if (item is FruitProduct) {
      return Colors.red.shade50;
    } else if (item is VegetableProduct) {
      return Colors.green.shade50;
    } else if (item is GrainProduct) {
      return Colors.orange.shade50;
    }

    return Colors.grey.shade500;
  }

  @override
  Color getItemHoverColor(NutritionalEntity item) {
    if (item is ProteinProduct) {
      return Colors.deepPurple.shade100;
    } else if (item is DairyProduct) {
      return Colors.blue.shade100;
    } else if (item is FruitProduct) {
      return Colors.red.shade100;
    } else if (item is VegetableProduct) {
      return Colors.green.shade100;
    } else if (item is GrainProduct) {
      return Colors.orange.shade100;
    }

    return Colors.grey.shade600;
  }

  @override
  Color getItemTextColor(NutritionalEntity item) {
    if (item is ProteinProduct) {
      return Colors.deepPurple.shade300;
    } else if (item is DairyProduct) {
      return Colors.blue.shade300;
    } else if (item is FruitProduct) {
      return Colors.red.shade300;
    } else if (item is VegetableProduct) {
      return Colors.green.shade400;
    } else if (item is GrainProduct) {
      return Colors.orange.shade500;
    }

    return Colors.grey.shade300;
  }

  @override
  Color getItemBorderColor(NutritionalEntity item) {
    if (item is ProteinProduct) {
      return Colors.deepPurple.shade300;
    } else if (item is DairyProduct) {
      return Colors.blue.shade300;
    } else if (item is FruitProduct) {
      return Colors.red.shade300;
    } else if (item is VegetableProduct) {
      return Colors.green.shade300;
    } else if (item is GrainProduct) {
      return Colors.orange.shade500;
    }

    return Colors.grey.shade600;
  }

  @override
  Color getSelectedBackgroundColor(NutritionalEntity item) {
    if (item is ProteinProduct) {
      return Colors.deepPurple.shade100;
    } else if (item is DairyProduct) {
      return Colors.blue.shade100;
    } else if (item is FruitProduct) {
      return Colors.red.shade100;
    } else if (item is VegetableProduct) {
      return Colors.green.shade100;
    } else if (item is GrainProduct) {
      return Colors.orange.shade100;
    }

    return Colors.grey.shade800;
  }

  @override
  Color getSelectedBorderColor(NutritionalEntity item) {
    if (item is ProteinProduct) {
      return Colors.deepPurple.shade800;
    } else if (item is DairyProduct) {
      return Colors.blue.shade800;
    } else if (item is FruitProduct) {
      return Colors.red.shade800;
    } else if (item is VegetableProduct) {
      return Colors.green.shade800;
    } else if (item is GrainProduct) {
      return Colors.orange.shade800;
    }

    return Colors.grey.shade800;
  }

  @override
  Color getSelectedTextColor(NutritionalEntity item) {
    if (item is ProteinProduct) {
      return Colors.deepPurple.shade800;
    } else if (item is DairyProduct) {
      return Colors.blue.shade700;
    } else if (item is FruitProduct) {
      return Colors.red.shade700;
    } else if (item is VegetableProduct) {
      return Colors.green.shade600;
    } else if (item is GrainProduct) {
      return Colors.orange.shade800;
    }

    return Colors.grey.shade300;
  }
}