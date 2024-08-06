import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../item/macro_totals_view.dart';

typedef FoodItemCallback = Function(PortionedFood);

class FoodSearchResult extends StatefulWidget {
  const FoodSearchResult(
      {Key? key,
      required this.foodItem,
      required this.onSelect,
      required this.focusNode,
      required this.onOpenItem,
      this.onFocusLost,
      this.onPortionMenuOpen,
      this.onPortionMenuClosed,
      this.isSelected = false})
      : super(key: key);

  final NutritionalEntity foodItem;
  final FoodItemCallback onSelect;
  final FoodItemCallback onOpenItem;
  final FocusScopeNode focusNode;
  final Function? onFocusLost;
  final VoidCallback? onPortionMenuOpen;
  final VoidCallback? onPortionMenuClosed;
  final bool isSelected;

  @override
  State<StatefulWidget> createState() {
    return FoodSearchResultState();
  }
}

class FoodSearchResultState extends State<FoodSearchResult> {
  NutritionalEntity get _foodItem => widget.foodItem;
  FoodItemCallback get onSelect => widget.onSelect;
  FoodItemCallback get onOpenItem => widget.onOpenItem;
  Function? get _onFocusLost => widget.onFocusLost;
  FocusScopeNode get _parentFocusNode => widget.focusNode;
  bool get _isSelected => widget.isSelected;

  final FocusNode _focusNode = FocusNode();

  Function? get onPortionMenuOpen => widget.onPortionMenuOpen;
  Function? get onPortionMenuClosed => widget.onPortionMenuClosed;

  double quantity = 1.0;
  late IFoodPortion foodPortion;
  late PortionedFood _entry;
  bool isHighlighted = false;
  bool isExpanded = false;

  @override
  void initState() {
    _focusNode.attach(context);

    try {
      foodPortion = _foodItem.portions.first;
    } catch(e) {
      foodPortion = const FoodPortion.zero();
    }

    _entry = PortionedFood(
        item: _foodItem, quantity: quantity, portion: foodPortion);
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        _onFocusLost?.call();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextStyle? text = Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Theme.of(context).colorScheme.onSurface.withOpacity(.5));

    return MouseRegion(
        onEnter: (e) {
          setState(() {
            isHighlighted = true;
          });
        },
        onExit: (e) {
          setState(() {
            isHighlighted = false;
          });
        },
        child: Container(
            decoration: BoxDecoration(
              color: isHighlighted || _isSelected
                  ? Theme.of(context).colorScheme.primary.withAlpha(20)
                  : Colors.transparent,
              border: _isSelected
                  ? Border.all(color: Theme.of(context).colorScheme.primary)
                  : null,
            ),
            child: FocusScope.withExternalFocusNode(
                focusScopeNode: _parentFocusNode,
                child: ExpansionTile(
                    expandedCrossAxisAlignment: CrossAxisAlignment.start,
                    expandedAlignment: Alignment.topLeft,
                    iconColor: Theme.of(context).colorScheme.onSurface,
                    onExpansionChanged: (newValue) {
                      onSelect(_entry);
                    },
                    trailing: IconButton(
                      icon: Icon(
                        Ionicons.open,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                      onPressed: () {
                        onOpenItem.call(_entry);
                      },
                    ),
                    title: Row(
                      children: [
                        Container(
                          width: 650,
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Text(_foodItem.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 14)),
                        ),
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Container(
                          width: 290,
                          alignment: Alignment.centerLeft,
                          child: TextFormField(
                              focusNode: _focusNode,
                              initialValue: _entry.quantity.toStringAsFixed(2),
                              inputFormatters: [
                                // This formatter allows only one decimal point
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^\d*\.?\d*')),
                              ],
                              onChanged: (String value) {
                                setState(() {
                                  double quantity = double.parse(value);
                                  _entry = _entry.copyWith(quantity: quantity);
                                });
                              },
                              style: text,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.only(
                                      left: 5.0, bottom: 15.0),
                                  suffix: Container(
                                    width: 233,
                                    decoration: const BoxDecoration(
                                      border: Border(
                                          left: BorderSide(
                                              color: Colors.black12)),
                                    ),
                                    margin: const EdgeInsets.only(left: 5.0),
                                    child: Container(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: DropdownButtonHideUnderline(
                                        child: DropdownButton<IFoodPortion>(
                                          // Callback that sets the selected popup menus item.
                                          value: _entry.portion,
                                          icon: Container(
                                            width: 10,
                                            margin: const EdgeInsets.only(
                                                right: 7.0),
                                            child: const Icon(
                                              Ionicons.caret_down,
                                              size: 10.0,
                                            ),
                                          ),
                                          isDense: true,
                                          onChanged:
                                              (IFoodPortion? newPortion) {
                                            setState(() {
                                              _entry = _entry.copyWith(
                                                  portion: newPortion);
                                            });
                                          },
                                          onTap: widget.onPortionMenuOpen,
                                          itemHeight: kMinInteractiveDimension,
                                          elevation: double.maxFinite.toInt(),
                                          dropdownColor: Theme.of(context)
                                              .colorScheme
                                              .surface,
                                          autofocus: false,
                                          items: _entry.item.portions
                                              .map((e) => DropdownMenuItem<
                                                      IFoodPortion>(
                                                  value: e,
                                                  child: SizedBox(
                                                    width: 200,
                                                    child: Text(e.title,
                                                        style: text,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis),
                                                  )))
                                              .toList(),
                                        ),
                                      ),
                                    ),
                                  ))),
                        ),
                        SizedBox(
                            width: 344,
                            child: MacroTotalsView(
                              totals: _entry.hasNutrientInformation
                                  ? NutrientTotalsCalculator.getMacros([_entry])
                                  : null,
                              valueStyle: text,
                              labelStyle: text,
                              color: Colors.transparent,
                            )),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20.0, horizontal: 15.0),
                        child: Container(
                          color: Colors.yellow,
                        ),
                      )
                    ]))));
  }
}
