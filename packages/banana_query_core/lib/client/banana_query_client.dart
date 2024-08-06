import 'package:banana_query_core/banana_query_api.dart';

abstract class BananaQueryClient {
  Future<List<T>> search<T extends NutritionalEntity>(String query, {String locale = "en"});

  Future<NutritionalEntity> read(int id, {String locale = "en"});
  Future<List<NutritionalEntity>> fetch(List<int> ids, {String locale = "en"});
  Future<List<T>> autocomplete<T extends NutritionalEntity>(String query, {String locale = "en"});
}