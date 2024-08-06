import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/helpers/nutrient_totals_calculator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

import '../item/macro_totals_view.dart';


typedef SearchResultSelect = Function(PortionedFood);

class FoodItemSearchResult extends StatefulWidget {
  const FoodItemSearchResult({
    Key? key,
    required this.foodItem,
    required this.onSelect,
    required this.focusNode,
    this.onFocusLost,
    this.onPortionMenuOpen,
    this.onPortionMenuClosed,
    this.isSelected = false
  }) : super(key: key);

  final NutritionalEntity foodItem;
  final SearchResultSelect onSelect;
  final FocusScopeNode focusNode;
  final Function? onFocusLost;
  final VoidCallback? onPortionMenuOpen;
  final VoidCallback? onPortionMenuClosed;
  final bool isSelected;

  @override
  State<StatefulWidget> createState() {
    return FoodItemSearchResultState();
  }
}

class FoodItemSearchResultState extends State<FoodItemSearchResult> {


  NutritionalEntity get _foodItem => widget.foodItem;
  SearchResultSelect get onSelect => widget.onSelect;
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


  @override
  void initState() {
    _focusNode.attach(context);
    foodPortion = _foodItem.portions.first;

    _entry = PortionedFood(item: _foodItem, quantity: quantity, portion: foodPortion);
    _focusNode.addListener(() {
      if (!_focusNode.hasFocus) {
        _onFocusLost?.call();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            color: isHighlighted || _isSelected ? Theme.of(context).colorScheme.primary.withAlpha(20) : Colors.transparent,
            border: _isSelected ? Border.all(
              color: Theme.of(context).colorScheme.primary
            ) : null,
          ),
          child: FocusScope.withExternalFocusNode(
              focusScopeNode: _parentFocusNode,
              child: ListTile(
                dense: true,
                onTap: () {
                  onSelect(_entry);
                },
                leading: Container(
                  width: 190,
                  height: 35.0,
                  alignment: Alignment.centerLeft,
                  child: TextFormField(
                      focusNode: _focusNode,
                      initialValue: _entry.quantity.toStringAsFixed(2),
                      onChanged: (String value) {
                        setState(() {
                          double quantity = double.parse(value);
                          _entry = _entry.copyWith(quantity: quantity);
                        });
                      },
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          isDense: true,
                          contentPadding: const EdgeInsets.only(left: 5.0, top: 15.0, bottom: 15.0),
                          border: const OutlineInputBorder(),
                          suffix: Container(
                            width: 133,
                            decoration: const BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Colors.black12
                                  )
                              ),
                            ),
                            margin: const EdgeInsets.only(left: 5.0),
                            child: Container(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<IFoodPortion>(
                                  // Callback that sets the selected popup menus item.
                                  value: _entry.portion,
                                  icon: Container(
                                    width: 10,
                                    margin: EdgeInsets.only(right: 7.0),
                                    child: Icon(Ionicons.caret_down, size: 10.0,),
                                  ),
                                  isDense: true,
                                  onChanged: (IFoodPortion? newPortion) {
                                    setState(() {
                                      _entry = _entry.copyWith(portion: newPortion);
                                    });
                                  },
                                  onTap: widget.onPortionMenuOpen,
                                  itemHeight: kMinInteractiveDimension,
                                  elevation: double.maxFinite.toInt(),
                                  dropdownColor: Theme.of(context).colorScheme.background,
                                  autofocus: false,
                                  items: _entry.item.portions.map((e) => DropdownMenuItem<IFoodPortion>(
                                      value: e,
                                      child: SizedBox(
                                        width: 100,
                                        child: Text(
                                            e.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                                      ))).toList(),
                                ),
                              ),
                            ),
                          )
                      )
                  ),
                ),
                title: GestureDetector(
                  onTap: () => {
                    onSelect.call(_entry)
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 350,
                        child: Text(_foodItem.name ?? ""),
                      ),
                      SizedBox(
                          height: 35,
                          width: 344,
                          child: MacroTotalsView(
                            totals: _entry.hasNutrientInformation
                                ? NutrientTotalsCalculator.getMacros([_entry])
                                : null,
                            valueStyle: Theme.of(context).textTheme.bodyMedium,
                            color: Colors.transparent,
                          )
                      ),
                    ],
                  ),
                ),
              )
          )
      )
    );
  }
}