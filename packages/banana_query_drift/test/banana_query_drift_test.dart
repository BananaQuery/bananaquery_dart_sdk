import 'package:test/test.dart';
import 'package:banana_query_drift/banana_query_drift.dart';

void main() {
  group('BananaQueryDrift', () {
    test('should initialize successfully', () async {
      final database = await BananaQueryDrift.initialize();
      expect(database, isNotNull);
    });
  });
}