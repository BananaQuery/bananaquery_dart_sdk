import 'package:cbl/cbl.dart';

abstract class CollectionRepo {
  Collection _assertCollectionExists(Collection? collection) {
    if (collection == null) {
      throw Exception('Database has not been initialized. Run BananaQueryCoachBase.initialize() before using this repo');
    }
    return collection;
  }
}