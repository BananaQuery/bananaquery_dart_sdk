import 'package:banana_query_core/portions/food_portion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

typedef OnSelectionChanged = Function(FoodPortion);

class PortionsDropdownField extends StatefulWidget {
  PortionsDropdownField(
      {super.key,
      required this.portions,
      this.initialValue,
      this.onChanged,
      this.onPortionMenuOpened,
      this.isDense = false});

  List<FoodPortion> portions;
  FoodPortion? initialValue;
  OnSelectionChanged? onChanged;
  Function? onPortionMenuOpened;
  bool isDense;

  @override
  State<StatefulWidget> createState() {
    return PortionDropdownFieldState();
  }
}

class PortionDropdownFieldState extends State<PortionsDropdownField> {
  List<FoodPortion> get portions => widget.portions;
  FoodPortion? get initialValue => widget.initialValue;
  OnSelectionChanged? get onChanged => widget.onChanged;
  Function? get onPortionMenuOpened => widget.onPortionMenuOpened;
  bool get isDense => widget.isDense;

  FoodPortion? getFirstPortion() {
    try {
      return portions.first;
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle selectedItemStyle = Theme.of(context).textTheme.bodyMedium!;
    final TextStyle? portionTextStyle = Theme.of(context)
        .textTheme
        .bodyMedium
        ?.copyWith(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(.5));

    return DropdownButtonFormField<FoodPortion>(
      // Callback that sets the selected popup menus item.
      value: initialValue ?? getFirstPortion(),
      style: portionTextStyle,
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
        if (newPortion != null) {
          onChanged?.call(newPortion);
        }
      },
      decoration: InputDecoration(
          isDense: isDense,
          border: const OutlineInputBorder(),
          // labelText: S.of(context).portion,
          floatingLabelBehavior: FloatingLabelBehavior.always),
      onTap: () => onPortionMenuOpened?.call(),
      itemHeight: kMinInteractiveDimension,
      elevation: double.maxFinite.toInt(),
      dropdownColor: Theme.of(context).colorScheme.surface,
      autofocus: false,
      items: portions
          .map((e) => DropdownMenuItem<FoodPortion>(
              value: e,
              child: SizedBox(
                width: 159,
                child:
                    Text(e.title, maxLines: 1, overflow: TextOverflow.ellipsis),
              )))
          .toList(),
    );
  }
}
