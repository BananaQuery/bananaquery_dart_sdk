import 'package:intl/intl.dart';

/// --------------------- EDITING A FOOD ITEM'S NAME --------------------- ///
String foodName() => Intl.message(
    'Food name',
    name: 'foodName',
    args: [],
    desc: 'Field label for food item\'s name');

String gramWeight() => Intl.message(
    'Gram Weight',
    name: 'gramWeight',
    args: [],
    desc: 'Field label for portion\'s gram weight');

String portionName() => Intl.message(
    'Portion Name',
    name: 'portionName',
    args: [],
    desc: 'Field label for portion\'s name');

String portionNameHint() => Intl.message(
    'e.g: big cup',
    name: 'portionNameHint',
    args: [],
    desc: 'Field hint for portion\'s name');

String pleaseEnterAPortionName() => Intl.message(
    'Please enter a portion name',
    name: 'pleaseEnterAPortionName',
    args: [],
    desc: 'Error message when a portion field is empty');

String invalidWeight() => Intl.message(
    'Invalid weight',
    name: 'invalidWeight',
    args: [],
    desc: 'Error message when a portion weight is invalid');