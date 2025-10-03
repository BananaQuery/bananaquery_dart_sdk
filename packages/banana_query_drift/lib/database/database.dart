import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

import 'tables.dart';

part 'database.g.dart';

@DriftDatabase(tables: [FoodDatabases, FoodItems])
class BananaQueryDriftDatabase extends _$BananaQueryDriftDatabase {
  BananaQueryDriftDatabase() : super(_openConnection());

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

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'bananaquery.db'));
    
    // Ensure SQLite is available on Android
    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }
    
    return NativeDatabase.createInBackground(file);
  });
}
