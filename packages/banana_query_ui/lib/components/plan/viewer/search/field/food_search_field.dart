import 'dart:async';
import 'package:banana_query_core/nutritional_entity.dart';
import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

typedef OnResults = Function(List<NutritionalEntity>);
typedef SearchMethod = Future<List<NutritionalEntity>> Function(String);

class FoodSearchField extends StatefulWidget {
  const FoodSearchField({
    super.key,
    required this.autofocus,
    this.searcher,
    this.onResults,
    this.focusNode,
    this.controller,
    this.contentPadding,
    this.onChange,
  });

  final bool autofocus;
  final OnResults? onResults;
  final FocusNode? focusNode;
  final TextEditingController? controller;

  final SearchMethod? searcher;

  final EdgeInsets? contentPadding;
  final VoidCallback? onChange;

  @override
  State<StatefulWidget> createState() {
    return FoodSearchFieldState();
  }
}

class FoodSearchFieldState extends State<FoodSearchField> {

  bool get autofocus => widget.autofocus;
  OnResults? get onResults => widget.onResults;
  FocusNode? get focusNode => widget.focusNode;
  TextEditingController? get controller => widget.controller;

  SearchMethod? get searcher => widget.searcher;

  EdgeInsets? get contentPadding => widget.contentPadding;
  VoidCallback? get onChange => widget.onChange;

  // The timer is used to set a minimum amount of time that needs to pass before
  // we actually search for an item. This is because performing a search on every
  // single change in the field is very expensive and totally unnecessary.
  Timer? searchTimer;
  final Duration searchDelay = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autofocus,
      textInputAction: TextInputAction.next,
      focusNode: focusNode,
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: S.of(context).searchFieldHint,
        contentPadding: contentPadding,
        suffixIcon: const Icon(Ionicons.search_outline, size: 20,)
      ),
      textAlignVertical: TextAlignVertical.center,
      enabled: searcher != null,
      onSubmitted: (String newValue) {

      },
      onChanged: (String fieldValue) async {
        searchTimer?.cancel();
        searchTimer = Timer(searchDelay, () {
          if (searcher != null) {
            searcher!.call(fieldValue).then((value) => onResults?.call(value));
          }
        });
        onChange?.call();
      },
      onEditingComplete: () {

      },
    );
  }

}