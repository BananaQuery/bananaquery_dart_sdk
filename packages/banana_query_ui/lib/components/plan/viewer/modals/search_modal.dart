import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/foods/portioned_food.dart';
import 'package:flutter/material.dart';

import '../search/food_search_view.dart';

typedef OnItemAdd = Function(PortionedFood);
typedef SearchMethod = Future<List<NutritionalEntity>> Function(String);

class SearchModal extends StatefulWidget {
  const SearchModal({
    Key? key,
    this.searcher,
    this.onItemAdd,

  }) : super(key: key);

  final OnItemAdd? onItemAdd;
  final SearchMethod? searcher;

  @override
  State<StatefulWidget> createState() {
    return EntryEditModalState();
  }
}

class EntryEditModalState extends State<SearchModal> with TickerProviderStateMixin {
  double height = 600;
  double width = 930;
  OnItemAdd? get _onItemAdd => widget.onItemAdd;
  SearchMethod? get searcher => widget.searcher;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        child: Container(
          height: height,
          width: width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          child: FoodSearchView(
            onSelect: (PortionedFood entry) {
              _onItemAdd?.call(entry);
            },
            searcher: searcher,
          ),
        ),
      )
    );
  }

}