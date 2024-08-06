import 'package:intl/intl.dart';

class CommonStringLocalization {
  /// -------------- COMMON BUTTON STRINGS ------------ ///
  ///
  String amount() =>
      Intl.message('Amount', name: 'amount', args: [], desc: 'Amount.');

  String okButtonText() => Intl.message('OK',
      name: 'okButtonText', args: [], desc: 'text for an OK button.');

  String exitButtonText() => Intl.message('Exit',
      name: 'exitButtonText', args: [], desc: 'text for an exit button.');

  String saveButtonText() => Intl.message('Save',
      name: 'saveButtonText', args: [], desc: 'text for an save button.');

  String editButtonText() => Intl.message('Edit',
      name: 'editButtonText', args: [], desc: 'text for an edit button.');

  String help() => Intl.message('help',
      name: 'help', args: [], desc: 'tooltip for help icon button');

  String exportPlan() => Intl.message('Export plan',
      name: 'exportPlan', args: [], desc: 'export plan tooltip');

  String markAsCurrent() => Intl.message('Mark as current',
      name: 'markAsCurrent',
      args: [],
      desc: 'mark plan as current plan tooltip');

  String editPlan() => Intl.message('Edit Plan',
      name: 'editPlan', args: [], desc: 'text for an edit plan button.');

  String deletePlan() => Intl.message('delete plan',
      name: 'deletePlan', args: [], desc: 'text for an delete plan button.');

  String planName() => Intl.message('Plan Name',
      name: 'planName', args: [], desc: 'Plan name field label.');

  String createNewPlan() => Intl.message('Create New Plan',
      name: 'createNewPlan', args: [], desc: 'Create new plan button text.');

  String syncButtonText() => Intl.message('Sync',
      name: 'syncButtonText', args: [], desc: 'text for an sync button.');

  String keyboardShortcutsText() => Intl.message('Keyboard shortcuts',
      name: 'keyboardShortcutsText',
      args: [],
      desc: 'Text for a keyboard shortcut section');

  String acceptButtonText() => Intl.message('Accept',
      name: 'acceptButtonText', args: [], desc: 'text for an ACCEPT button.');

  String cancelButtonText() => Intl.message('Cancel',
      name: 'cancelButtonText', args: [], desc: 'text for a cancel button.');

  String selectButtonText() => Intl.message('Select',
      name: 'selectButtonText', args: [], desc: 'text for a select button.');

  String selectItemButtonText() => Intl.message('Select Item',
      name: 'selectItemButtonText',
      args: [],
      desc: 'text for a select item button.');

  String deleteButtonText() => Intl.message('Delete',
      name: 'deleteButtonText', args: [], desc: 'text for a delete button.');

  String editItem() => Intl.message('Edit Item',
      name: 'editItem', args: [], desc: 'text for a edit item button.');

  String downloadButtonText() => Intl.message('Download',
      name: 'downloadButtonText',
      args: [],
      desc: 'text for a download button.');

  String addButtonText() => Intl.message('Add',
      name: 'addButtonText', args: [], desc: 'text for an add button.');

  String linkButtonText() => Intl.message('Link',
      name: 'linkButtonText', args: [], desc: 'text for a link button.');

  String sendButtonText() => Intl.message('Send',
      name: 'sendButtonText', args: [], desc: 'text for a send button.');

  String back() => Intl.message('Back',
      name: 'back', args: [], desc: 'text for a back button.');

  String yes() => Intl.message('Yes',
      name: 'yes', args: [], desc: 'text for a yes button.');

  String finish() => Intl.message('Finish',
      name: 'finish', args: [], desc: 'text for a finish button.');

  String update() => Intl.message('Update',
      name: 'update', args: [], desc: 'text for a update button.');

  String no() =>
      Intl.message('No', name: 'no', args: [], desc: 'text for a no button.');

  String emailFieldHint() => Intl.message('enter email address',
      name: 'emailFieldHint', args: [], desc: 'hint for an email field.');

  String readOnlyLink() => Intl.message('Read-only link',
      name: 'readOnlyLink', args: [], desc: 'Read only link label');

  String createLink() => Intl.message('Create link',
      name: 'createLink', args: [], desc: 'Create link button text');

  /// -------------- DAYS OF THE WEEK ---------------- ///

  String monday() => Intl.message('Monday',
      name: 'monday', args: [], desc: 'Monday: day of the week.');

  String tuesday() => Intl.message('Tuesday',
      name: 'tuesday', args: [], desc: 'Tuesday: day of the week.');

  String wednesday() => Intl.message('Wednesday',
      name: 'wednesday', args: [], desc: 'Wednesday: day of the week.');

  String thursday() => Intl.message('Thursday',
      name: 'thursday', args: [], desc: 'Thursday: day of the week.');

  String friday() => Intl.message('Friday',
      name: 'friday', args: [], desc: 'Friday: day of the week.');

  String saturday() => Intl.message('Saturday',
      name: 'saturday', args: [], desc: 'Saturday: day of the week.');

  String sunday() => Intl.message('Sunday',
      name: 'sunday', args: [], desc: 'Sunday: day of the week.');

  String privacyPolicy() => Intl.message('Privacy policy',
      name: 'privacyPolicy', args: [], desc: 'Text for privacy policy button');

  String invalidFile() => Intl.message('Invalid file',
      name: 'invalidFile',
      args: [],
      desc: 'Title for the alert that pops up when you cannot open a file');

  String cannotOpenFile(filename) => Intl.message(
      'Cannot open "$filename", the file is invalid.',
      name: 'cannotOpenFile',
      args: [filename],
      desc: 'Body text for the alert that pops up when you cannot open a file');

  String calories() => Intl.message('Calories',
      name: 'calories', args: [], desc: 'Calories text');

  String carbohydrates() => Intl.message('Carbohydrates',
      name: 'carbohydrates', args: [], desc: 'Carbohydrates text');

  String proteins() => Intl.message('Proteins',
      name: 'proteins', args: [], desc: 'Proteins text');

  String fats() =>
      Intl.message('Fats', name: 'fats', args: [], desc: 'Fats text');

  String minerals() => Intl.message('Minerals',
      name: 'minerals', args: [], desc: 'Minerals text');

  String vitamins() => Intl.message('Vitamins',
      name: 'vitamins', args: [], desc: 'Vitamins text');

  String portions() => Intl.message('Portions',
      name: 'portions', args: [], desc: 'Portions text');

  String newPortion() => Intl.message('New Portion',
      name: 'newPortion', args: [], desc: 'New portions button text');

  String calorieDistribution() => Intl.message('Calorie Distribution',
      name: 'calorieDistribution',
      args: [],
      desc: 'Calorie distribution title');

  String macrosAndGroups() => Intl.message('Macros & Food Groups',
      name: 'macrosAndGroups', args: [], desc: 'Macros stats title');

  String macroNutrientDistribution() =>
      Intl.message('Macro Nutrient Distribution',
          name: 'macroNutrientDistribution',
          args: [],
          desc: 'Title for macro nutrient distribution pie chart.');

  String foodGroupDistribution() => Intl.message('Food Group Distribution',
      name: 'foodGroupDistribution',
      args: [],
      desc: 'Title for food group distribution pie chart.');

  String foods() =>
      Intl.message('Foods', name: 'foods', args: [], desc: 'foods text');

  String meals() =>
      Intl.message('Meals', name: 'meals', args: [], desc: 'meals text');

  String rda() =>
      Intl.message('RDA', name: 'rda', args: [], desc: 'RDA');

  String equivalents() =>
      Intl.message('Equivalents', name: 'equivalents', args: [], desc: 'equivalents');

  String equivalence() =>
      Intl.message('Equivalence', name: 'equivalence', args: [], desc: 'equivalence');

  String newEquivalence() =>
      Intl.message('New Equivalence', name: 'newEquivalence', args: [], desc: 'new equivalence');

  String information() =>
      Intl.message('Information', name: 'information', args: [], desc: 'Information');

  String microNutrients() =>
      Intl.message('Micro Nutrients', name: 'microNutrients', args: [], desc: 'micro nutrients');

  String noItems() =>
      Intl.message('No Items', name: 'noItems', args: [], desc: 'no items');

  String addItem() =>
      Intl.message('Add Item', name: 'addItem', args: [], desc: 'add item button text');

  String foodItems() =>
      Intl.message('Food Items', name: 'foodItems', args: [], desc: 'Food items');

  String removeItem() =>
      Intl.message('Remove Item', name: 'removeItem', args: [], desc: 'Remove food item');

  String import() =>
      Intl.message('Import', name: 'import', args: [], desc: 'import');

  String open() =>
      Intl.message('Open', name: 'open', args: [], desc: 'open');

  String quantity() =>
      Intl.message('Quantity', name: 'quantity', args: [], desc: 'quantity');

  String averagePortion() =>
      Intl.message('Average Portion', name: 'averagePortion', args: [], desc: 'average portion');

  String noAveragePortion() =>
      Intl.message('No Average Portion', name: 'noAveragePortion', args: [], desc: 'no average portion');

  String itemDoesNotExist() =>
      Intl.message('Item does not exist', name: 'itemDoesNotExist', args: [], desc: 'open');
}
