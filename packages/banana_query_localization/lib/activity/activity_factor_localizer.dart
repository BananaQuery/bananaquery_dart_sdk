import '../generated/l10n.dart';

class ActivityFactorLocalizer {
  static localize(final String activity) {
    switch (activity.toLowerCase()) {
      case 'confined to bed':
        return S.current.physicalActivityConfinedToBed;
      case 'low activity':
        return S.current.physicalActivityLowActivity;
      case 'average activity':
        return S.current.physicalActivityAverageActivity;
      case 'moderate activity':
        return S.current.physicalActivityModerateActivity;
      case 'high activity':
        return S.current.physicalActivityHighActivity;
      default:
        throw Exception('Unknown ActivityCategory');
    }
  }
}