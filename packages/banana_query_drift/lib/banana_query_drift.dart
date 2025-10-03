import 'package:banana_query_drift/database/database.dart';
import 'package:banana_query_drift/repos/food_database_drift_repo.dart';
import 'package:banana_query_drift/repos/food_item_drift_repo.dart';
import 'package:banana_query_database/banana_query_database.dart';

class BananaQueryDrift {
  static Future<BananaQueryDatabase> initialize() async {
    // Create the Drift database instance
    final driftDatabase = BananaQueryDriftDatabase();
    
    // Create repository instances
    final databaseRepo = FoodDatabaseDriftRepo(database: driftDatabase);
    final itemRepo = FoodItemDriftRepo(database: driftDatabase);
    
    // Return the main database interface
    return BananaQueryDatabase(databaseRepo: databaseRepo, foodRepo: itemRepo);
  }
}
