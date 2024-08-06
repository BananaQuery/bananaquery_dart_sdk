import '../generated/l10n.dart';

class UnitSystemLocalizer {
  static localize(final String system) {
    switch (system.toLowerCase()) {
      case 'metric':
        return S.current.unitSystemMetric;
      case 'imperial':
        return S.current.unitSystemImperial;
    }
    throw Exception("No localization found for unit system");
  }
}