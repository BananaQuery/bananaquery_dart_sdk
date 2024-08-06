import 'package:banana_query_couchbase/banana_query_couchbase.dart';
import 'package:banana_query_database/banana_query_database.dart';
import 'package:banana_query_database/database_importer.dart';
import 'package:banana_query_ui/components/plan/viewer/search/food_search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../components/widget_preview.dart';

class SearchDemo extends StatefulWidget {
  const SearchDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return SearchDemoState();
  }
}

class SearchDemoState extends State<SearchDemo> {

  late Future<BananaQueryDatabase> initialize;


  @override
  void initState() {
    initialize = BananaQueryCouchBase.initialize().then((database) async {
      final DatabaseImporter importer = DatabaseImporter(bananaQueryDatabase: database);
      final String databaseString = await rootBundle.loadString('assets/usda_test.bodsdb');
      importer.importFromString(databaseString);
      return database;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<BananaQueryDatabase>(
      future: initialize,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          BananaQueryDatabase data = snapshot.data!;

          return Column(
              children: [
                Expanded(
                    child: FoodSearchView(
                      onSelect: (item) {

                      },
                      searcher: data.searchFoodItems,
                    )
                )
              ]
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }
}