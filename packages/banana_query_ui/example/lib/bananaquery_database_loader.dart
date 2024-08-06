import 'package:banana_query_couchbase/banana_query_couchbase.dart';
import 'package:banana_query_database/banana_query_database.dart';
import 'package:banana_query_database/database_importer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BananaQueryDatabaseLoader extends StatefulWidget {
  const BananaQueryDatabaseLoader({super.key, required this.builder});

  final Widget Function(BuildContext, BananaQueryDatabase) builder;

  @override
  State<StatefulWidget> createState() {
    return BananaQueryDatabaseLoaderState();
  }
}

class BananaQueryDatabaseLoaderState extends State<BananaQueryDatabaseLoader> {

  late Future<BananaQueryDatabase> initialize;

  Widget Function(BuildContext, BananaQueryDatabase) get builder => widget.builder;

  @override
  void initState() {
    initialize = BananaQueryCouchBase.initialize().then((database) async {
      final DatabaseImporter importer = DatabaseImporter(bananaQueryDatabase: database);
      final String databaseString = await rootBundle.loadString('assets/usda_default.bodsdb');
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
          return builder(context, data);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
    );
  }
}