// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a messages locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'messages';

  static String m0(planPrice) => "Continue (${planPrice}/Month)";

  static String m1(planPrice) => "${planPrice}/Month";

  static String m2(filename) =>
      "Cannot open \"${filename}\", the file is invalid.";

  static String m3(query) => "No food items matching: ${query}";

  static String m4(attemptCount) =>
      "${Intl.plural(attemptCount, zero: 'No attempts', one: '${attemptCount} attempt', many: '${attemptCount} attempts', other: '${attemptCount} attempts')}";

  static String m5(email) => "to: ${email}";

  static String m6(planName) => "${planName} (not sent)";

  static String m7(planName) => "${planName} (sending)";

  static String m8(planName) => "${planName}";

  static String m9(portion) =>
      "You are about to delete the ${portion} portion, do you want to continue?";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "acceptButtonText": MessageLookupByLibrary.simpleMessage("Accept"),
        "addButtonText": MessageLookupByLibrary.simpleMessage("Add"),
        "appSettingsTabTitle":
            MessageLookupByLibrary.simpleMessage("App Settings"),
        "areYouSureYouWantToDeleteMealPlan":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete this plan?"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "becomeASupporterContinueButton": m0,
        "becomeASupporterPriceRate": m1,
        "becomeASupporterSubtitle": MessageLookupByLibrary.simpleMessage(
            "You contributions will help Bodistics grow!"),
        "becomeASupporterTierOneName":
            MessageLookupByLibrary.simpleMessage("Supporter"),
        "becomeASupporterTierOnePointOne":
            MessageLookupByLibrary.simpleMessage("You like the project"),
        "becomeASupporterTierOnePointThree":
            MessageLookupByLibrary.simpleMessage(
                "But you are not ready to use Bodistics"),
        "becomeASupporterTierOnePointTwo": MessageLookupByLibrary.simpleMessage(
            "You\'d like to see Bodistics succeed"),
        "becomeASupporterTierThreeName":
            MessageLookupByLibrary.simpleMessage("Advocator"),
        "becomeASupporterTierThreePointOne":
            MessageLookupByLibrary.simpleMessage(
                "You want to be involved in the Bodistics community"),
        "becomeASupporterTierThreePointThree": MessageLookupByLibrary.simpleMessage(
            "You want to give direct feedback to the developers to help make Bodistics better"),
        "becomeASupporterTierThreePointTwo":
            MessageLookupByLibrary.simpleMessage(
                "You want to be front of the line when it comes to updates"),
        "becomeASupporterTierTwoName":
            MessageLookupByLibrary.simpleMessage("Believer"),
        "becomeASupporterTierTwoPointOne": MessageLookupByLibrary.simpleMessage(
            "You believe this project will become your main tool of work"),
        "becomeASupporterTierTwoPointThree":
            MessageLookupByLibrary.simpleMessage(
                "You want to contribute to the Bodistics community"),
        "becomeASupporterTierTwoPointTwo": MessageLookupByLibrary.simpleMessage(
            "You think Bodistics could make your life easier"),
        "becomeASupporterTitle":
            MessageLookupByLibrary.simpleMessage("Become a Supporter"),
        "calories": MessageLookupByLibrary.simpleMessage("Calories"),
        "cancelButtonText": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cannotOpenFile": m2,
        "carb": MessageLookupByLibrary.simpleMessage("Carb"),
        "carbohydrates": MessageLookupByLibrary.simpleMessage("Carbohydrates"),
        "clientDocumentTabUntitledDocument":
            MessageLookupByLibrary.simpleMessage("Untitled Document"),
        "confirmYourSelection":
            MessageLookupByLibrary.simpleMessage("Confirm your selection"),
        "conflictingItemDatabaseItemTitle":
            MessageLookupByLibrary.simpleMessage("Database Food Item"),
        "conflictingItemMealPlanItemTitle":
            MessageLookupByLibrary.simpleMessage("Item in meal plan"),
        "conflictingItemReplacementMessage": MessageLookupByLibrary.simpleMessage(
            "The conflicting food items in your meal plan will be replaced by the food item present in your database"),
        "conflictingItemSelectionDialogMessageOne":
            MessageLookupByLibrary.simpleMessage(
                "There is an existing food item with the same name but with different data in the meal plan and the database"),
        "conflictingItemSelectionDialogMessageTwo":
            MessageLookupByLibrary.simpleMessage(
                "Note: selecting the food item from the meal plan will cause your entry to be marked as out of sync."),
        "conflictingItemSelectionDialogTitle":
            MessageLookupByLibrary.simpleMessage(
                "Which item would you like to use in this meal plan?"),
        "createLink": MessageLookupByLibrary.simpleMessage("Create link"),
        "createNewPlan":
            MessageLookupByLibrary.simpleMessage("Create New Plan"),
        "deleteButtonText": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteDialogDefaultMessage": MessageLookupByLibrary.simpleMessage(
            "You are about to delete a resource, are you sure you want to continue?"),
        "deleteDialogDefaultTitle":
            MessageLookupByLibrary.simpleMessage("Are you sure?"),
        "deleteFoodPortion":
            MessageLookupByLibrary.simpleMessage("Delete Portion"),
        "deleteItemConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "The food item will be deleted from your database, this action cannot be undone."),
        "deleteItemConfirmationTitle": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to edit this item?"),
        "deletePlan": MessageLookupByLibrary.simpleMessage("delete plan"),
        "downloadButtonText": MessageLookupByLibrary.simpleMessage("Download"),
        "editButtonText": MessageLookupByLibrary.simpleMessage("Edit"),
        "editFoodPortion":
            MessageLookupByLibrary.simpleMessage("Edit Food Portion"),
        "editItem": MessageLookupByLibrary.simpleMessage("Edit Item"),
        "editItemConfirmationMessage": MessageLookupByLibrary.simpleMessage(
            "Food items don\'t get changed much so we just want to confirm you want to edit this item."),
        "editItemConfirmationTitle": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to edit this item?"),
        "editPlan": MessageLookupByLibrary.simpleMessage("Edit Plan"),
        "emailFieldHint":
            MessageLookupByLibrary.simpleMessage("enter email address"),
        "energy": MessageLookupByLibrary.simpleMessage("Energy"),
        "exitButtonText": MessageLookupByLibrary.simpleMessage("Exit"),
        "exportPlan": MessageLookupByLibrary.simpleMessage("Export plan"),
        "fat": MessageLookupByLibrary.simpleMessage("Fat"),
        "fats": MessageLookupByLibrary.simpleMessage("Fats"),
        "fiber": MessageLookupByLibrary.simpleMessage("Fiber"),
        "finish": MessageLookupByLibrary.simpleMessage("Finish"),
        "foodItemOutOfSync":
            MessageLookupByLibrary.simpleMessage("Food item out of sync"),
        "foodName": MessageLookupByLibrary.simpleMessage("Food name"),
        "foodPlanComponentAdd": MessageLookupByLibrary.simpleMessage("Add"),
        "foodPlanComponentAddItem":
            MessageLookupByLibrary.simpleMessage("Add Item"),
        "foodPlanComponentBreakfast":
            MessageLookupByLibrary.simpleMessage("Breakfast"),
        "foodPlanComponentDinner":
            MessageLookupByLibrary.simpleMessage("Dinner"),
        "foodPlanComponentLunch": MessageLookupByLibrary.simpleMessage("Lunch"),
        "foodPlanComponentSnack": MessageLookupByLibrary.simpleMessage("Snack"),
        "foodPlanComponentTotals":
            MessageLookupByLibrary.simpleMessage("Totals"),
        "foodPlanEditorHelp":
            MessageLookupByLibrary.simpleMessage("Food Plan Editor Help"),
        "foodPlansHoldTheirOwnData": MessageLookupByLibrary.simpleMessage(
            "Bodistics food plans hold their own nutritional data for the items they use. \nWe have detected that this item has different nutritional in your food plan than what your database holds."),
        "friday": MessageLookupByLibrary.simpleMessage("Friday"),
        "gender": MessageLookupByLibrary.simpleMessage("Gender"),
        "genderFemale": MessageLookupByLibrary.simpleMessage("female"),
        "genderMale": MessageLookupByLibrary.simpleMessage("male"),
        "getStartedBecomeASupporterButton":
            MessageLookupByLibrary.simpleMessage("Become a supporter"),
        "getStartedDocumentShortcutsTitle":
            MessageLookupByLibrary.simpleMessage("Document Shortcuts"),
        "getStartedGlobalShortcutsTitle":
            MessageLookupByLibrary.simpleMessage("Global Shortcuts"),
        "getStartedNewDocumentShortcutMacOS":
            MessageLookupByLibrary.simpleMessage("(⌘ + n) New document"),
        "getStartedSaveDocumentShortcut":
            MessageLookupByLibrary.simpleMessage("(⌘ + s) Save document"),
        "getStartedSupporterSectionTitle":
            MessageLookupByLibrary.simpleMessage("Support Bodistics"),
        "getStartedTabTitle":
            MessageLookupByLibrary.simpleMessage("Get Started"),
        "getStartedViewCreateNewPatientFile":
            MessageLookupByLibrary.simpleMessage("Create new patient file"),
        "getStartedViewLinks": MessageLookupByLibrary.simpleMessage("Links"),
        "getStartedViewNoRecentFiles":
            MessageLookupByLibrary.simpleMessage("No recent files..."),
        "getStartedViewOpenExistingFile":
            MessageLookupByLibrary.simpleMessage("Open existing file"),
        "getStartedViewRecent": MessageLookupByLibrary.simpleMessage("Recent"),
        "getStartedViewStart": MessageLookupByLibrary.simpleMessage("Start"),
        "getStartedViewTermsOfUse":
            MessageLookupByLibrary.simpleMessage("Terms of use"),
        "gramWeight": MessageLookupByLibrary.simpleMessage("Gram Weight"),
        "help": MessageLookupByLibrary.simpleMessage("help"),
        "importingEnglishFoodDatabase": MessageLookupByLibrary.simpleMessage(
            "Importing English food database"),
        "importingSpanishFoodDatabase": MessageLookupByLibrary.simpleMessage(
            "Importing Spanish food database"),
        "initializingFoodService":
            MessageLookupByLibrary.simpleMessage("Initializing food service"),
        "invalidFile": MessageLookupByLibrary.simpleMessage("Invalid file"),
        "invalidWeight": MessageLookupByLibrary.simpleMessage("Invalid weight"),
        "itemSearchComponentStartTypingToSearch":
            MessageLookupByLibrary.simpleMessage(
                "Start typing to search items"),
        "itemSynced": MessageLookupByLibrary.simpleMessage("Item Synced"),
        "keyboardShortcutsText":
            MessageLookupByLibrary.simpleMessage("Keyboard shortcuts"),
        "linkButtonText": MessageLookupByLibrary.simpleMessage("Link"),
        "loadingFileService":
            MessageLookupByLibrary.simpleMessage("Loading file service"),
        "loadingSettings":
            MessageLookupByLibrary.simpleMessage("Loading settings"),
        "loadingTabService":
            MessageLookupByLibrary.simpleMessage("Loading tab service"),
        "markAsCurrent":
            MessageLookupByLibrary.simpleMessage("Mark as current"),
        "minerals": MessageLookupByLibrary.simpleMessage("Minerals"),
        "monday": MessageLookupByLibrary.simpleMessage("Monday"),
        "newFoodPortion":
            MessageLookupByLibrary.simpleMessage("New Food portion"),
        "newMealPlan": MessageLookupByLibrary.simpleMessage("New Meal Plan"),
        "newPortion": MessageLookupByLibrary.simpleMessage("New Portion"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noChangesHaveBeenMade":
            MessageLookupByLibrary.simpleMessage("No changes have been made"),
        "noFoodItemsMatchingQuery": m3,
        "okButtonText": MessageLookupByLibrary.simpleMessage("OK"),
        "pageBarCloseDialogBodyOne": MessageLookupByLibrary.simpleMessage(
            "You are closing an unsaved document. All data will be lost."),
        "pageBarCloseDialogBodyTwo": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to close this document?"),
        "pageBarCloseDialogCloseButton":
            MessageLookupByLibrary.simpleMessage("Close"),
        "pageBarCloseDialogTitle":
            MessageLookupByLibrary.simpleMessage("Unsaved document"),
        "physicalActivity":
            MessageLookupByLibrary.simpleMessage("Physical Activity"),
        "physicalActivityAverageActivity":
            MessageLookupByLibrary.simpleMessage("average activity"),
        "physicalActivityConfinedToBed":
            MessageLookupByLibrary.simpleMessage("confined to bed"),
        "physicalActivityHighActivity":
            MessageLookupByLibrary.simpleMessage("high activity"),
        "physicalActivityLowActivity":
            MessageLookupByLibrary.simpleMessage("low activity"),
        "physicalActivityModerateActivity":
            MessageLookupByLibrary.simpleMessage("moderate activity"),
        "planEditorViewCalorieCount":
            MessageLookupByLibrary.simpleMessage("Calorie Count"),
        "planEditorViewCopiedPlanLink":
            MessageLookupByLibrary.simpleMessage("Copied plan link"),
        "planEditorViewCurrentPlanButton":
            MessageLookupByLibrary.simpleMessage("Current Plan"),
        "planEditorViewFailedToCreatePlanLink":
            MessageLookupByLibrary.simpleMessage("Failed to create plan link"),
        "planEditorViewMacroNutrients":
            MessageLookupByLibrary.simpleMessage("Macro Nutrients"),
        "planEditorViewPlanHasBeenExported":
            MessageLookupByLibrary.simpleMessage(
                "Food plans has been exported and saved."),
        "planEditorViewSaveDialogTitle":
            MessageLookupByLibrary.simpleMessage("Save Food Plan"),
        "planEditorViewShortcutCopy":
            MessageLookupByLibrary.simpleMessage("Copy"),
        "planEditorViewShortcutDelete":
            MessageLookupByLibrary.simpleMessage("Delete"),
        "planEditorViewShortcutExpandShrink":
            MessageLookupByLibrary.simpleMessage("Expand/shrink selection"),
        "planEditorViewShortcutMoveNextPrevious":
            MessageLookupByLibrary.simpleMessage(
                "Move to next/previous section"),
        "planEditorViewShortcutMoveRightLeft":
            MessageLookupByLibrary.simpleMessage("Move right/left"),
        "planEditorViewShortcutPaste":
            MessageLookupByLibrary.simpleMessage("Paste"),
        "planName": MessageLookupByLibrary.simpleMessage("Plan Name"),
        "planShareDialogTitle":
            MessageLookupByLibrary.simpleMessage("Send Food Plan"),
        "pleaseConfirmUpdate":
            MessageLookupByLibrary.simpleMessage("Please confirm update"),
        "pleaseEnterAPortionName":
            MessageLookupByLibrary.simpleMessage("Please enter a portion name"),
        "portion": MessageLookupByLibrary.simpleMessage("portion"),
        "portionName": MessageLookupByLibrary.simpleMessage("Portion Name"),
        "portionNameHint": MessageLookupByLibrary.simpleMessage("e.g: big cup"),
        "portions": MessageLookupByLibrary.simpleMessage("Portions"),
        "portionsModalQuantity":
            MessageLookupByLibrary.simpleMessage("Quantity"),
        "portionsModalQuantityHint":
            MessageLookupByLibrary.simpleMessage("Quantity: e.g \"1.2\""),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy policy"),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "proteins": MessageLookupByLibrary.simpleMessage("Proteins"),
        "readOnlyLink": MessageLookupByLibrary.simpleMessage("Read-only link"),
        "saturday": MessageLookupByLibrary.simpleMessage("Saturday"),
        "saveButtonText": MessageLookupByLibrary.simpleMessage("Save"),
        "saveDialogTitle":
            MessageLookupByLibrary.simpleMessage("Save Food Plan"),
        "searchFieldHint": MessageLookupByLibrary.simpleMessage("Search food"),
        "selectButtonText": MessageLookupByLibrary.simpleMessage("Select"),
        "selectItemButtonText":
            MessageLookupByLibrary.simpleMessage("Select Item"),
        "selectingDefaultDatabase":
            MessageLookupByLibrary.simpleMessage("Selecting default database"),
        "sendButtonText": MessageLookupByLibrary.simpleMessage("Send"),
        "sendPlanJobCardBodyAttempts": m4,
        "sendPlanJobCardBodyRetry":
            MessageLookupByLibrary.simpleMessage("retry"),
        "sendPlanJobCardBodySuccess":
            MessageLookupByLibrary.simpleMessage("Plan was sent successfully"),
        "sendPlanJobCardSubtitleTo": m5,
        "sendPlanJobCardTitleNotSent": m6,
        "sendPlanJobCardTitleSending": m7,
        "sendPlanJobCardTitleSent": m8,
        "settingsViewDefaultUnits":
            MessageLookupByLibrary.simpleMessage("Default Units"),
        "settingsViewFoodDatabases":
            MessageLookupByLibrary.simpleMessage("Food Databases"),
        "settingsViewImportDatabase":
            MessageLookupByLibrary.simpleMessage("Import Database"),
        "settingsViewSettings":
            MessageLookupByLibrary.simpleMessage("Settings"),
        "shareMealPlan":
            MessageLookupByLibrary.simpleMessage("Share meal plan"),
        "shareMealPlanMessage": MessageLookupByLibrary.simpleMessage(
            "Give your clients access to this meal plan. The meal plan will be automatically sync everytime you save the file"),
        "slideAvocadoToConfirm": MessageLookupByLibrary.simpleMessage(
            "Slide the avocado to confirm"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sunday"),
        "syncButtonText": MessageLookupByLibrary.simpleMessage("Sync"),
        "theFoodItemNowMatchesTheDatabase": MessageLookupByLibrary.simpleMessage(
            "The food item in your meal plan now matches the food item in your database and will now be marked as synced."),
        "theFoodPlanWillBeDeleted": MessageLookupByLibrary.simpleMessage(
            "The food plan will be deleted from your document\'s profile and will no longer be accessible. This action cannot be undone."),
        "theItemWillStillBeMarkedAsNotSynced": MessageLookupByLibrary.simpleMessage(
            "The item will still be marked as not synced. You can always come back and sync it later."),
        "thursday": MessageLookupByLibrary.simpleMessage("Thursday"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tuesday"),
        "unitSystemImperial": MessageLookupByLibrary.simpleMessage("imperial"),
        "unitSystemMetric": MessageLookupByLibrary.simpleMessage("metric"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateDatabaseWithMealPlanItemMessageOne":
            MessageLookupByLibrary.simpleMessage(
                "We can update the food item in your database to match the food item in the food plan. This will update the name, portions, and nutrients."),
        "updateDatabaseWithMealPlanItemMessageThree":
            MessageLookupByLibrary.simpleMessage(
                "Note: You can always select \"no\" do this later."),
        "updateDatabaseWithMealPlanItemMessageTwo":
            MessageLookupByLibrary.simpleMessage(
                "If you select \"no\" then the item in the food plan will remain marked as \"out of sync\"."),
        "updateDatabaseWithMealPlanItemTitle":
            MessageLookupByLibrary.simpleMessage(
                "Update your database with the meal plan\'s food item?"),
        "userProfileActualHeight":
            MessageLookupByLibrary.simpleMessage("Actual Height"),
        "userProfileActualWaist":
            MessageLookupByLibrary.simpleMessage("Actual Waist"),
        "userProfileActualWeight":
            MessageLookupByLibrary.simpleMessage("Actual Weight"),
        "userProfileAddMetricButton":
            MessageLookupByLibrary.simpleMessage("ADD METRIC"),
        "userProfileBMI": MessageLookupByLibrary.simpleMessage("BMI"),
        "userProfileBodyFat":
            MessageLookupByLibrary.simpleMessage("Body Fat %"),
        "userProfileContactInformation":
            MessageLookupByLibrary.simpleMessage("Contact Information"),
        "userProfileContactInformationEmail":
            MessageLookupByLibrary.simpleMessage("Email"),
        "userProfileContactInformationPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Phone Number"),
        "userProfileCurrentMealPlan":
            MessageLookupByLibrary.simpleMessage("Current meal Plan"),
        "userProfileDateOfBirth":
            MessageLookupByLibrary.simpleMessage("Date of Birth"),
        "userProfileEmptyCurrentMealPlan":
            MessageLookupByLibrary.simpleMessage("No assigned plans"),
        "userProfileEmptyStats": MessageLookupByLibrary.simpleMessage(
            "Get started by adding metrics!"),
        "userProfileFoodPlanName":
            MessageLookupByLibrary.simpleMessage("Food plans name"),
        "userProfileFoodPlanNameHint":
            MessageLookupByLibrary.simpleMessage("plans name"),
        "userProfileHeight": MessageLookupByLibrary.simpleMessage("Height"),
        "userProfileIntroduceNewHeight":
            MessageLookupByLibrary.simpleMessage("Introduce new height"),
        "userProfileIntroduceNewWaist": MessageLookupByLibrary.simpleMessage(
            "Introduce new waist measurement"),
        "userProfileIntroduceNewWeight":
            MessageLookupByLibrary.simpleMessage("Introduce new weight"),
        "userProfileMealPlans":
            MessageLookupByLibrary.simpleMessage("Meal Plans"),
        "userProfilePatientName":
            MessageLookupByLibrary.simpleMessage("Patient\'s name"),
        "userProfilePhoneNumber":
            MessageLookupByLibrary.simpleMessage("Phone Number"),
        "userProfileRecordsChestColumn":
            MessageLookupByLibrary.simpleMessage("Chest"),
        "userProfileRecordsDateColumn":
            MessageLookupByLibrary.simpleMessage("Date"),
        "userProfileRecordsLeftArmColumn":
            MessageLookupByLibrary.simpleMessage("Left Arm"),
        "userProfileRecordsLeftLegColumn":
            MessageLookupByLibrary.simpleMessage("Left Leg"),
        "userProfileRecordsRightArmColumn":
            MessageLookupByLibrary.simpleMessage("Right Arm"),
        "userProfileRecordsRightLegColumn":
            MessageLookupByLibrary.simpleMessage("Right Leg"),
        "userProfileRecordsWaistColumn":
            MessageLookupByLibrary.simpleMessage("Waist"),
        "userProfileRecordsWeightColumn":
            MessageLookupByLibrary.simpleMessage("Weight"),
        "userProfileStatsData":
            MessageLookupByLibrary.simpleMessage("Stats Data"),
        "userProfileWaist": MessageLookupByLibrary.simpleMessage("Waist"),
        "userProfileWeight": MessageLookupByLibrary.simpleMessage("Weight"),
        "vitamins": MessageLookupByLibrary.simpleMessage("Vitamins"),
        "weDontWantYourDataToGetLost": MessageLookupByLibrary.simpleMessage(
            "We don\'t want your data to get lost!"),
        "weHaveUpdatedYourDatabase": MessageLookupByLibrary.simpleMessage(
            "We have updated your database!"),
        "weHaveUpdatedYourMealPlan": MessageLookupByLibrary.simpleMessage(
            "We have updated your meal plan!"),
        "weWillKeepUsingADifferentVersion": MessageLookupByLibrary.simpleMessage(
            "We will keep using a different version of this item on your meal plan."),
        "weWillUpdateThisFoodItemInMealPlan": MessageLookupByLibrary.simpleMessage(
            "We will update the existing references to this food item in your meal plan with your selection."),
        "wednesday": MessageLookupByLibrary.simpleMessage("Wednesday"),
        "whichVersionOfThisFoodShouldWeUse":
            MessageLookupByLibrary.simpleMessage(
                "Which version of this food item should we use for this plan?"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes"),
        "youAreAboutToDeleteFoodPortion": m9,
        "yourDatabaseWillBeUpdateWithFoodPlanItem":
            MessageLookupByLibrary.simpleMessage(
                "Your database will be updated with the food item in the food plan. Once you confirm your database will be updated."),
        "yourFoodItemWillBeMarkedAsSynced":
            MessageLookupByLibrary.simpleMessage(
                "Your food item in your meal plan will be marked as synced.")
      };
}
