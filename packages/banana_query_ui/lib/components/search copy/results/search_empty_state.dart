import 'package:banana_query_localization/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

class SearchEmptyState extends StatelessWidget {
  const SearchEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Text(S.of(context).itemSearchComponentStartTypingToSearch) ],
        )
      ],
    );
  }

}