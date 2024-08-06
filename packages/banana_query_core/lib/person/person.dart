enum Gender { female, male, unknown }

extension GenderExtension on Gender {
  String get name {
    switch (this) {
      case Gender.female:
        return 'female';
      case Gender.male:
        return 'male';
      default:
        throw Exception('Unknown gender');
    }
  }

  static Gender fromJson(dynamic json) {
    if (json == Gender.female.toString()) {
      return Gender.female;
    } else if (json == Gender.male.toString()) {
      return Gender.male;
    }
    return Gender.unknown;
  }
}


class Person {
  DateTime? birthdate;
  double? height;
}