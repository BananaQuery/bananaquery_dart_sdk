import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_core/portions/food_portion.dart';
import 'package:banana_query_ui/components/search/results/food_item_options_view.dart';
import 'package:banana_query_ui/components/search/results/search_empty_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'field/food_search_field.dart';

typedef OnFoodItemSelect = void Function(PortionedFood entry);
typedef SearchMethod = Future<List<NutritionalEntity>> Function(String);

class FoodSearchView extends StatefulWidget {
  const FoodSearchView({
    super.key,
    this.searcher,
    this.onSelect,
  });

  final OnFoodItemSelect? onSelect;
  final SearchMethod? searcher;

  @override
  State<StatefulWidget> createState() {
    return FoodSearchViewState();
  }
}

class FoodSearchViewState extends State<FoodSearchView> {
  List<NutritionalEntity> results = [];
  PortionedFood? selectedEntry;
  bool isLoading = false;

  OnFoodItemSelect? get _onSelect => widget.onSelect;
  SearchMethod? get searcher => widget.searcher;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 300,
                margin: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                child: FoodSearchField(
                  autofocus: true,
                  searcher: searcher,
                  onChange: () {
                    if (isLoading != true) {
                      setState(() {
                        isLoading = true;
                      });
                    }
                  },
                  onResults: (items) async {results.clear();
                    for (var element in items) {
                      if (element.portions.isEmpty) {
                        element.portions.add(const FoodPortion.gramDefault());
                      }
                    }
                    setState(() {
                      results = items;
                      isLoading = false;
                    });
                  },
                ),
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: results.isNotEmpty
                  ? SizedBox(
                width: 600,
                child: FoodItemOptionsView(
                    shrinkWrap: false,
                    foodItems: results,
                    selectedEntry: selectedEntry,
                    onSelect: (PortionedFood entry) {
                      setState(() {
                        selectedEntry = entry;
                      });
                    }
                )
              )
                : isLoading ? const Center(child: CircularProgressIndicator()) : const SearchEmptyState(),
              floatingActionButton: FloatingActionButton(
                backgroundColor: selectedEntry != null
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.surface,
                child: Icon(Ionicons.add, color: Theme.of(context).colorScheme.onPrimary,),
                onPressed: () {
                  if (selectedEntry != null) {
                    _onSelect?.call(selectedEntry!);
                  }
                },
              ),
              floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
            )
          ),
        ],
      )
    );
  }
}