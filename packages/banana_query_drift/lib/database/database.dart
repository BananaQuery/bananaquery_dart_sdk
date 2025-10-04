import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(tables: [FoodDatabases, FoodItems])
class BananaQueryDriftDatabase extends _$BananaQueryDriftDatabase {
  BananaQueryDriftDatabase() : super(driftDatabase(
    name: 'bananaquery.db',
    web: DriftWebOptions(
      sqlite3Wasm: Uri.parse('sqlite3.wasm'),
      driftWorker: Uri.parse('drift_worker.dart.js'),
    ),
  ));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
      // Create full-text search indexes
      await customStatement('''
        CREATE VIRTUAL TABLE food_items_fts USING fts5(
          id, name, description, content='food_items', content_rowid='rowid'
        );
      ''');
      
      await customStatement('''
        CREATE VIRTUAL TABLE food_databases_fts USING fts5(
          id, name, description, content='food_databases', content_rowid='rowid'
        );
      ''');
    },
  );
}