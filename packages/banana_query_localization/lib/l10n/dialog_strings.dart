import 'package:intl/intl.dart';

class CommonStringLocalization {
  /// -------------- COMMON BUTTON STRINGS ------------ ///

  String deleteDialogDefaultTitle() => Intl.message('Are you sure?',
      name: 'deleteDialogDefaultTitle',
      args: [],
      desc: 'Title for the delete dialog');

  String deleteDialogDefaultMessage() => Intl.message(
      'You are about to delete a resource, are you sure you want to continue?',
      name: 'deleteDialogDefaultMessage',
      args: [],
      desc: 'Message for the delete dialog.');

  String saveDialogTitle() => Intl.message('Save Food Plan',
      name: 'saveDialogTitle',
      args: [],
      desc: 'Title for the save plans dialog');

  /// --------------------- EDITING A FOOD ITEM'S NAME --------------------- ///

  String editItemConfirmationTitle() =>
      Intl.message('Are you sure you want to edit this item?',
          name: 'editItemConfirmationTitle',
          args: [],
          desc: 'Title for the dialog shown when editing an item');

  String editItemConfirmationMessage() => Intl.message(
      'Food items don\'t get changed much so we just want to confirm you want to edit this item.',
      name: 'editItemConfirmationMessage',
      args: [],
      desc: 'Message for the dialog shown when editing an item');

  String deleteItemConfirmationTitle() =>
      Intl.message('Are you sure you want to edit this item?',
          name: 'deleteItemConfirmationTitle',
          args: [],
          desc: 'Title for the dialog shown when deleting an item');

  String deleteItemConfirmationMessage() => Intl.message(
      'The food item will be deleted from your database, this action cannot be undone.',
      name: 'deleteItemConfirmationMessage',
      args: [],
      desc: 'Message for the dialog shown when deleting an item');

  String slideAvocadoToConfirm() => Intl.message('Slide the avocado to confirm',
      name: 'slideAvocadoToConfirm',
      args: [],
      desc:
          'Text to show in the confirmation slider used when deleting or editing important data.');

  /// --------------------- EDITING A FOOD ITEM'S NAME --------------------- ///

  String conflictingItemSelectionDialogTitle() => Intl.message(
      'Which item would you like to use in this meal plan?',
      name: 'conflictingItemSelectionDialogTitle',
      args: [],
      desc:
          'Title for the dialog shown when you have to choose between food items in a meal plan');

  String conflictingItemSelectionDialogMessageOne() => Intl.message(
      'There is an existing food item with the same name but with different data in the meal plan and the database',
      name: 'conflictingItemSelectionDialogMessageOne',
      args: [],
      desc:
          'Message for the dialog shown when you have to choose between food items in a meal plan');

  String conflictingItemSelectionDialogMessageTwo() => Intl.message(
      'Note: selecting the food item from the meal plan will cause your entry to be marked as out of sync.',
      name: 'conflictingItemSelectionDialogMessageTwo',
      args: [],
      desc:
          'Message for the dialog shown when you have to choose between food items in a meal plan');

  String conflictingItemMealPlanItemTitle() => Intl.message('Item in meal plan',
      name: 'conflictingItemMealPlanItemTitle',
      args: [],
      desc:
          'Title shown in the meal plan food item when displaying the two conflicting food items side by side.');

  String conflictingItemDatabaseItemTitle() => Intl.message(
      'Database Food Item',
      name: 'conflictingItemDatabaseItemTitle',
      args: [],
      desc:
          'Title shown in the database food item when displaying the two conflicting food items side by side.');

  String confirmYourSelection() => Intl.message('Confirm your selection',
      name: 'confirmYourSelection',
      args: [],
      desc: 'Confirm your selection text');

  String conflictingItemReplacementMessage() => Intl.message(
      'The conflicting food items in your meal plan will be replaced by the food item present in your database',
      name: 'conflictingItemReplacementMessage',
      args: [],
      desc: 'Confirm your selection text');

  String updateDatabaseWithMealPlanItemTitle() =>
      Intl.message('Update your database with the meal plan\'s food item?',
          name: 'updateDatabaseWithMealPlanItemTitle',
          args: [],
          desc: 'Update database with meal plan item dialog title');

  String updateDatabaseWithMealPlanItemMessageOne() => Intl.message(
      'We can update the food item in your database to match the food item in the food plan. This will update the name, portions, and nutrients.',
      name: 'updateDatabaseWithMealPlanItemMessageOne',
      args: [],
      desc: 'Update database with meal plan item dialog message');

  String updateDatabaseWithMealPlanItemMessageTwo() => Intl.message(
      'If you select "no" then the item in the food plan will remain marked as "out of sync".',
      name: 'updateDatabaseWithMealPlanItemMessageTwo',
      args: [],
      desc: 'Update database with meal plan item dialog message');

  String updateDatabaseWithMealPlanItemMessageThree() =>
      Intl.message('Note: You can always select "no" do this later.',
          name: 'updateDatabaseWithMealPlanItemMessageThree',
          args: [],
          desc: 'Update database with meal plan item dialog message');

  String pleaseConfirmUpdate() => Intl.message('Please confirm update',
      name: 'pleaseConfirmUpdate',
      args: [],
      desc: 'Confirm update dialog title');

  String yourDatabaseWillBeUpdateWithFoodPlanItem() => Intl.message(
      'Your database will be updated with the food item in the food plan. Once you confirm your database will be updated.',
      name: 'yourDatabaseWillBeUpdateWithFoodPlanItem',
      args: [],
      desc: 'Confirm update dialog message');

  String weHaveUpdatedYourDatabase() =>
      Intl.message('We have updated your database!',
          name: 'weHaveUpdatedYourDatabase',
          args: [],
          desc: 'database update confirmation dialog title');

  String yourFoodItemWillBeMarkedAsSynced() =>
      Intl.message('Your food item in your meal plan will be marked as synced.',
          name: 'yourFoodItemWillBeMarkedAsSynced',
          args: [],
          desc: 'Food item will be marked as synced text');

  String weDontWantYourDataToGetLost() =>
      Intl.message('We don\'t want your data to get lost!',
          name: 'weDontWantYourDataToGetLost',
          args: [],
          desc: 'Title for the dialog shown when a food item in conflict.');

  String foodPlansHoldTheirOwnData() => Intl.message(
      'Bodistics food plans hold their own nutritional data for the items they use. \nWe have detected that this item has different nutritional in your food plan than what your database holds.',
      name: 'foodPlansHoldTheirOwnData',
      args: [],
      desc: 'Message for the dialog shown when a food item in conflict.');

  String whichVersionOfThisFoodShouldWeUse() => Intl.message(
      'Which version of this food item should we use for this plan?',
      name: 'whichVersionOfThisFoodShouldWeUse',
      args: [],
      desc: 'Message for the dialog shown when a food item in conflict.');

  String weWillUpdateThisFoodItemInMealPlan() => Intl.message(
      'We will update the existing references to this food item in your meal plan with your selection.',
      name: 'weWillUpdateThisFoodItemInMealPlan',
      args: [],
      desc:
          'Message for the confirmation dialog when we are about to update a food item in meal plan.');

  String noChangesHaveBeenMade() => Intl.message('No changes have been made',
      name: 'noChangesHaveBeenMade',
      args: [],
      desc:
          'Title for the dialog shown when no changes were made to meal plan.');

  String weWillKeepUsingADifferentVersion() => Intl.message(
      'We will keep using a different version of this item on your meal plan.',
      name: 'weWillKeepUsingADifferentVersion',
      args: [],
      desc:
          'Message for the dialog shown when no changes were made to meal plan.');

  String theItemWillStillBeMarkedAsNotSynced() => Intl.message(
      'The item will still be marked as not synced. You can always come back and sync it later.',
      name: 'theItemWillStillBeMarkedAsNotSynced',
      args: [],
      desc:
          'Message when the item in a meal will still be marked as out-of-sync.');

  String weHaveUpdatedYourMealPlan() => Intl.message(
      'We have updated your meal plan!',
      name: 'weHaveUpdatedYourMealPlan',
      args: [],
      desc:
          'Title of dialog shown when an item in the meal plan has been updated');

  String theFoodItemNowMatchesTheDatabase() => Intl.message(
      'The food item in your meal plan now matches the food item in your database and will now be marked as synced.',
      name: 'theFoodItemNowMatchesTheDatabase',
      args: [],
      desc:
          'Message of dialog shown when an item in the meal plan has been updated');
  //The food item in your meal plan now matches the food item in your database and will now be marked as synced.

  String shareMealPlan() => Intl.message('Share meal plan',
      name: 'shareMealPlan', args: [], desc: 'Share meal plan dialog title');

  String shareMealPlanMessage() => Intl.message(
      'Give your clients access to this meal plan. The meal plan will be automatically sync everytime you save the file',
      name: 'shareMealPlanMessage',
      args: [],
      desc: 'Share meal plan dialog title');

  String areYouSureYouWantToDeleteMealPlan() => Intl.message(
      'Are you sure you want to delete this plan?',
      name: 'areYouSureYouWantToDeleteMealPlan',
      args: [],
      desc:
          'Title for the confirmation dialog shown when trying to delete meal plan.');

  String theFoodPlanWillBeDeleted() => Intl.message(
      'The food plan will be deleted from your document\'s profile and will no longer be accessible. This action cannot be undone.',
      name: 'theFoodPlanWillBeDeleted',
      args: [],
      desc:
          'Message for the confirmation dialog shown when trying to delete meal plan.');

  String foodPlanEditorHelp() => Intl.message('Food Plan Editor Help',
      name: 'foodPlanEditorHelp',
      args: [],
      desc: 'Title for the editor\'s help dialog');

  String editFoodPortion() => Intl.message('Edit Food Portion',
      name: 'editFoodPortion',
      args: [],
      desc: 'Title for the edit food portion dialog');

  String newFoodPortion() => Intl.message('New Food portion',
      name: 'newFoodPortion',
      args: [],
      desc: 'Title for the new food portion dialog');

  String deleteFoodPortion() => Intl.message('Delete Portion',
      name: 'deleteFoodPortion',
      args: [],
      desc: 'Title for the delete food portion dialog');

  String youAreAboutToDeleteFoodPortion(portion) => Intl.message(
      'You are about to delete the $portion portion, do you want to continue?',
      name: 'youAreAboutToDeleteFoodPortion',
      args: [portion],
      desc: 'Message for the delete food portion dialog');
}
