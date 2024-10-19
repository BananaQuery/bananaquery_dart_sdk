import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/portions/food_portion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

typedef PortionFieldChanged = Function(PortionedFood);

class PortionField extends StatelessWidget {
  const PortionField({
    super.key,
    required this.entry,
    this.focusNode,
    this.onChanged,
  });

  final PortionedFood entry;
  final FocusNode? focusNode;
  final PortionFieldChanged? onChanged;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double portionMenuWidth = constraints.maxWidth * .75;
        return TextFormField(
            focusNode: focusNode,
            initialValue: entry.quantity.toStringAsFixed(1),
            onChanged: (String value) {
              double quantity = double.parse(value);
              onChanged?.call(entry.copyWith(quantity: quantity));
            },
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                isDense: true,
                contentPadding:
                    const EdgeInsets.only(left: 5.0, top: 15.0, bottom: 15.0),
                border: const OutlineInputBorder(),
                suffix: Container(
                  width: portionMenuWidth,
                  decoration: const BoxDecoration(
                    border: Border(left: BorderSide(color: Colors.black12)),
                  ),
                  margin: const EdgeInsets.only(left: 5.0),
                  child: Container(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<FoodPortion>(
                        // Callback that sets the selected popup menus item.
                        value: entry.portion,
                        icon: Container(
                          width: 10,
                          margin: const EdgeInsets.only(right: 7.0),
                          child: const Icon(
                            Ionicons.caret_down,
                            size: 10.0,
                          ),
                        ),
                        isDense: true,
                        onChanged: (FoodPortion? newPortion) {
                          onChanged?.call(entry.copyWith(portion: newPortion));
                        },
                        itemHeight: kMinInteractiveDimension,
                        elevation: double.maxFinite.toInt(),
                        dropdownColor: Theme.of(context).colorScheme.surface,
                        autofocus: false,
                        items: entry.item.portions
                            .map((e) => DropdownMenuItem<FoodPortion>(
                                value: e,
                                child: SizedBox(
                                  width: 100,
                                  child: Text(e.title,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis),
                                )))
                            .toList(),
                      ),
                    ),
                  ),
                )));
      },
    );
  }
}
