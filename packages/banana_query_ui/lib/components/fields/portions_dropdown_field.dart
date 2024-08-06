import 'package:banana_query_core/portions/i_food_portion.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

typedef OnSelectionChanged = Function(IFoodPortion);

class PortionsDropdownField extends StatefulWidget {
  PortionsDropdownField(
      {super.key, required this.portions,
      this.initialValue,
      this.onChanged,
      this.onPortionMenuOpened});

  List<IFoodPortion> portions;
  IFoodPortion? initialValue;
  OnSelectionChanged? onChanged;
  Function? onPortionMenuOpened;

  @override
  State<StatefulWidget> createState() {
    return PortionDropdownFieldState();
  }
}

class PortionDropdownFieldState extends State<PortionsDropdownField> {
  List<IFoodPortion> get portions => widget.portions;
  IFoodPortion? get initialValue => widget.initialValue;
  OnSelectionChanged? get onChanged => widget.onChanged;
  Function? get onPortionMenuOpened => widget.onPortionMenuOpened;

  IFoodPortion? getFirstPortion() {
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

    return DropdownButtonFormField<IFoodPortion>(
      // Callback that sets the selected popup menus item.
      value: initialValue ?? getFirstPortion(),
      style: portionTextStyle,
      selectedItemBuilder: (BuildContext context) {
        return portions.map((IFoodPortion portion) {
          return Text(portion.title,
              style: selectedItemStyle,
              maxLines: 1,
              overflow: TextOverflow.ellipsis);
        }).toList();
      },
      icon: Container(
        width: 10,
        margin: const EdgeInsets.only(right: 7.0),
        child: const Icon(
          Ionicons.caret_down,
          size: 10.0,
        ),
      ),
      isDense: true,
      onChanged: (IFoodPortion? newPortion) {
        if (newPortion != null) {
          onChanged?.call(newPortion);
        }
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: S.of(context).portion,
          floatingLabelBehavior: FloatingLabelBehavior.always),
      onTap: () => onPortionMenuOpened?.call(),
      itemHeight: kMinInteractiveDimension,
      elevation: double.maxFinite.toInt(),
      dropdownColor: Theme.of(context).colorScheme.surface,
      autofocus: false,
      items: portions
          .map((e) => DropdownMenuItem<IFoodPortion>(
              value: e,
              child: SizedBox(
                width: 200,
                child: Text(e.title,
                    style: portionTextStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              )))
          .toList(),
    );
  }
}
