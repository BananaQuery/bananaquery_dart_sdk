
import 'package:banana_query_couchbase/repos/food_database_cb_repo.dart';
import 'package:banana_query_couchbase/repos/food_item_cb_repo.dart';
import 'package:banana_query_database/banana_query_database.dart';
import 'package:cbl/cbl.dart';
import 'package:cbl_flutter/cbl_flutter.dart';

class BananaQueryCouchBase  {
  static Future<BananaQueryDatabase> initialize() async {
    // Open the database (creating it if it doesn’t exist).
    try {
      await CouchbaseLiteFlutter.init();
    } catch (e) {
      print('warning: CouchbaseLiteFlutter already initialized: $e');
    }

    final database = await Database.openAsync('BananaQuery');
    // Create a collection, or return it if it already exists.
    var databasecollection = await database.createCollection('BQ_FoodDatabases');
    var foodCollection = await database.createCollection('BQ_FoodItems');

    var index = FullTextIndexConfiguration(["name", "description"]);
    foodCollection.createIndex("nameDescriptionFTSIndex", index);

    FoodDatabaseCBRepo databaseRepo = FoodDatabaseCBRepo(database: database);
    FoodItemCbRepo itemRepo = FoodItemCbRepo(database: database);

    return BananaQueryDatabase(databaseRepo: databaseRepo, foodRepo: itemRepo);
  }
}
