import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_ui/components/foods/lists/food_item_tile.dart';
import 'package:drop_down_search_field/drop_down_search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef ItemBuilder = Widget Function(BuildContext context, NutritionalEntity item);
typedef SearchMethod = Future<List<NutritionalEntity>> Function(String query);
typedef OnItemSelect = void Function(NutritionalEntity);

class AutoCompleteFoodSearchField extends StatefulWidget {

  const AutoCompleteFoodSearchField({
    super.key,
    required this.onSearch,
    this.itemBuilder,
    this.onItemSelect,
    this.fieldConfiguration,
    this.onChange,
  });

  final SearchMethod onSearch;
  final ItemBuilder? itemBuilder;
  final TextFieldConfiguration? fieldConfiguration;
  final OnItemSelect? onItemSelect;
  final VoidCallback? onChange;

  @override
  State<StatefulWidget> createState() {
    return AutoCompleteFoodSearchFieldState();
  }
}

class AutoCompleteFoodSearchFieldState extends State<AutoCompleteFoodSearchField> {

  SearchMethod get onSearch => widget.onSearch;
  ItemBuilder? get itemBuilder => widget.itemBuilder;
  OnItemSelect? get onItemSelect => widget.onItemSelect;
  TextFieldConfiguration? get fieldConfiguration => widget.fieldConfiguration;

  final SuggestionsBoxController suggestionsBoxController = SuggestionsBoxController();
  final FocusNode focusScopeNode = FocusNode(
    descendantsAreFocusable: true,
    canRequestFocus: true
  );
  final FocusNode focusNode = FocusNode(descendantsAreFocusable: false, canRequestFocus: true);
  final List<String> list = <String>['One', 'Two', 'Three', 'Four'];
  String? selectedFilter;

  init() {
    selectedFilter = list.first;
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        suggestionsBoxController.open();
      } else {
        suggestionsBoxController.close();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DropDownSearchField(
      textFieldConfiguration: fieldConfiguration ?? TextFieldConfiguration(
        onTap: () {
          suggestionsBoxController.open();
        }
      ),
      onSuggestionsBoxToggle: (e) {
        suggestionsBoxController.open();
      },
      suggestionsBoxController: suggestionsBoxController,
      getImmediateSuggestions: true,
      displayAllSuggestionWhenTap: true,
      suggestionsCallback: onSearch,
      keepSuggestionsOnSuggestionSelected: true,
      onSuggestionSelected: (NutritionalEntity? suggestion) {
        if (suggestion != null) {
          onItemSelect?.call(suggestion);
        }
      },
      itemBuilder: (BuildContext context, itemData) {
        if (itemBuilder != null) {
          return itemBuilder!(context, itemData);
        }
        return FoodItemTile(foodItem: itemData);
      },
    );
  }
}