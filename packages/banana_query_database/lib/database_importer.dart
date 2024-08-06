import 'dart:convert';
import 'dart:io';
import 'package:banana_query_core/banana_query_api.dart';
import 'package:banana_query_core/database/food_database_info.dart';
import 'package:banana_query_core/factories/food_factory.dart';

import 'banana_query_database.dart';

typedef ProgressCallback = void Function(double);

class DatabaseImporter {
  DatabaseImporter({ required this.bananaQueryDatabase  });

  final BananaQueryDatabase bananaQueryDatabase;

  static Future<FoodDatabaseInfo> extractMetadata(String databaseString) async {
    List<String> lines = const LineSplitter().convert(databaseString);
    Map<String, dynamic> metadata = jsonDecode(lines.first);
    return FoodDatabaseInfo.fromJson(metadata);
  }

  void importFromString(String databaseString,
      {ProgressCallback? onProgress, FoodFactory? foodFactory}) async {
    foodFactory ??= FoodFactory.standard();
    List<String> lines = const LineSplitter().convert(databaseString);
    Map<String, dynamic> metadata = jsonDecode(lines.first);
    lines.removeAt(0);

    final info = FoodDatabaseInfo.fromJson(metadata);
    await bananaQueryDatabase.createFoodDatabase(info);

    int currentItem = 0;
    final int itemCount = lines.length;
    for (var element in lines) {
      onProgress?.call(++currentItem / itemCount);
      if (element.isNotEmpty) {
        Map<String, dynamic> itemJson =
            jsonDecode(element.replaceFirst(RegExp(",\$"), ""));
        itemJson["databaseId"] = info.id;
        NutritionalEntity item = foodFactory.fromJson(itemJson);

        await bananaQueryDatabase.createFoodItem(item);
      }
    }
  }

  Future<void> importFromUrl(final Uri url,
      {ProgressCallback? onProgress}) async {

    HttpClient client = HttpClient();
    HttpClientRequest request = await client.getUrl(url);
    HttpClientResponse response = await request.close();
    String databaseString = await response.transform(utf8.decoder).join();
    return importFromString(databaseString, onProgress: onProgress);
  }


  Future<void> importFromFilePath(final String filepath,
      {ProgressCallback? onProgress}) async {
    final File dbFile = File(filepath);
    if (!dbFile.existsSync()) {
      throw Exception("file: $filepath doesn't exists");
    }

    return importFromFile(dbFile, onProgress: onProgress);
  }

  Future<void> importFromFile(final File file,
      {ProgressCallback? onProgress}) async {
    String databaseString = await file.readAsString();
    if (databaseString.isEmpty) {
      throw Exception("Invalid raw database string. The string is empty.");
    }

    return importFromString(databaseString, onProgress: onProgress);
  }
}
