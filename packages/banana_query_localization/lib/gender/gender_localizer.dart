import '../generated/l10n.dart';

class GenderLocalizer {
  static localizeGender(final String gender) {
    switch (gender.toLowerCase()) {
      case 'female': {
        return S.current.genderFemale;
      }
      default: {
        return S.current.genderMale;
      }
    }
  }
}