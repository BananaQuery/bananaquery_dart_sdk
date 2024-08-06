import 'package:intl/intl.dart';

class BodisticsLocalization {
  /// -------------------- GetStartedView ------------------------  //

  // ------- Title strings
  String getStartedViewStart() => Intl.message('Start',
      name: 'getStartedViewStart',
      args: [],
      desc:
          'Title for a section that helps user take quick actions to start using the app');

  String getStartedViewRecent() => Intl.message('Recent',
      name: 'getStartedViewRecent',
      args: [],
      desc:
          'Title for a section that displays a list of recently opened files');

  String getStartedViewNoRecentFiles() => Intl.message('No recent files...',
      name: 'getStartedViewNoRecentFiles',
      args: [],
      desc: 'Text to show when there are not recent files to show');

  String getStartedViewLinks() => Intl.message('Links',
      name: 'getStartedViewLinks',
      args: [],
      desc: 'Title for a section that displays a list of useful links');

  String getStartedSupporterSectionTitle() => Intl.message('Support Bodistics',
      name: 'getStartedSupporterSectionTitle',
      args: [],
      desc: 'Title for the Supporter section in the get started tab.');

  String getStartedBecomeASupporterButton() =>
      Intl.message('Become a supporter',
          name: 'getStartedBecomeASupporterButton',
          args: [],
          desc: 'Text for the supporter button');

  String getStartedGlobalShortcutsTitle() => Intl.message('Global Shortcuts',
      name: 'getStartedGlobalShortcutsTitle',
      args: [],
      desc: 'Title for the global shortcuts section');

  String getStartedNewDocumentShortcutMacOS() =>
      Intl.message('(⌘ + n) New document',
          name: 'getStartedNewDocumentShortcutMacOS',
          args: [],
          desc: 'Text for the new document shortcut');

  String getStartedDocumentShortcutsTitle() =>
      Intl.message('Document Shortcuts',
          name: 'getStartedDocumentShortcutsTitle',
          args: [],
          desc: 'Title for the document shortcuts section');

  String getStartedSaveDocumentShortcut() =>
      Intl.message('(⌘ + s) Save document',
          name: 'getStartedSaveDocumentShortcut',
          args: [],
          desc: 'Text fot the save document shortcut');

  // ------- Content strings
  String getStartedViewCreateNewPatientFile() =>
      Intl.message('Create new patient file',
          name: 'getStartedViewCreateNewPatientFile',
          args: [],
          desc: 'Text button string to create a new patient file');

  String getStartedViewOpenExistingFile() => Intl.message('Open existing file',
      name: 'getStartedViewOpenExistingFile',
      args: [],
      desc: 'Text button string to open an existing file');

  String getStartedViewTermsOfUse() => Intl.message('Terms of use',
      name: 'getStartedViewTermsOfUse',
      args: [],
      desc: 'Link to the terms of use of the app');

  /// -------------------- Settings View ------------------------  //
  String settingsViewSettings() => Intl.message('Settings',
      name: 'settingsViewSettings',
      args: [],
      desc: 'Title for the settings page');

  String settingsViewDefaultUnits() => Intl.message('Default Units',
      name: 'settingsViewDefaultUnits',
      args: [],
      desc: 'Text for the default units dropdown menus');

  String settingsViewFoodDatabases() => Intl.message('Food Databases',
      name: 'settingsViewFoodDatabases',
      args: [],
      desc: 'Title for the plans databases section in the settings page');

  String settingsViewImportDatabase() => Intl.message('Import Database',
      name: 'settingsViewImportDatabase',
      args: [],
      desc: 'Text for the import database button');

  /// -------------------- User Profile View ------------------------  //
  String userProfilePatientName() => Intl.message('Patient\'s name',
      name: 'userProfilePatientName',
      args: [],
      desc: 'hint text for the client\'s name');

  String userProfileDateOfBirth() => Intl.message('Date of Birth',
      name: 'userProfileDateOfBirth',
      args: [],
      desc: 'Title for the date of birth field');

  String userProfilePhoneNumber() => Intl.message('Phone Number',
      name: 'userProfilePhoneNumber',
      args: [],
      desc: 'Phone number field title');

  String userProfileWeight() => Intl.message('Weight',
      name: 'userProfileWeight',
      args: [],
      desc: 'Title for the weight measurement');

  String userProfileActualWeight() => Intl.message('Actual Weight',
      name: 'userProfileActualWeight',
      args: [],
      desc: 'Title for the weight measurement');

  String userProfileIntroduceNewWeight() => Intl.message('Introduce new weight',
      name: 'userProfileIntroduceNewWeight',
      args: [],
      desc: 'label for the field that edits the actual weight');

  String userProfileBodyFat() => Intl.message('Body Fat %',
      name: 'userProfileBodyFat',
      args: [],
      desc: 'Title for the body fat measurement');

  String userProfileHeight() => Intl.message('Height',
      name: 'userProfileHeight',
      args: [],
      desc: 'Title for the height measurement');

  String userProfileIntroduceNewHeight() => Intl.message('Introduce new height',
      name: 'userProfileIntroduceNewHeight',
      args: [],
      desc: 'Field label for the modals height dialog');

  String userProfileActualHeight() => Intl.message('Actual Height',
      name: 'userProfileActualHeight',
      args: [],
      desc: 'Text that labels the actual height value');

  String userProfileWaist() => Intl.message('Waist',
      name: 'userProfileWaist',
      args: [],
      desc: 'Title for the waist measurement');

  String userProfileIntroduceNewWaist() =>
      Intl.message('Introduce new waist measurement',
          name: 'userProfileIntroduceNewWaist',
          args: [],
          desc: 'label for the modals waist dialog');

  String userProfileActualWaist() => Intl.message('Actual Waist',
      name: 'userProfileActualWaist',
      args: [],
      desc:
          'Text that labels the actual waist value in the modals waist dialog');

  String userProfileBMI() => Intl.message('BMI',
      name: 'userProfileBMI',
      args: [],
      desc: 'Body Mass Index abbreviation letters');

  String userProfileStatsData() => Intl.message('Stats Data',
      name: 'userProfileStatsData',
      args: [],
      desc: 'Title for the user profile data table');

  String userProfileCurrentMealPlan() => Intl.message('Current meal Plan',
      name: 'userProfileCurrentMealPlan',
      args: [],
      desc: 'Title for the current meal plans for a user profile');

  String userProfileMealPlans() => Intl.message('Meal Plans',
      name: 'userProfileMealPlans',
      args: [],
      desc: 'Title for the list of meal plans in a user profile');

  String userProfileEmptyCurrentMealPlan() => Intl.message('No assigned plans',
      name: 'userProfileEmptyCurrentMealPlan',
      args: [],
      desc: 'Text to show when there is no meal plans assigned');

  String userProfileFoodPlanName() => Intl.message('Food plans name',
      name: 'userProfileFoodPlanName',
      args: [],
      desc: 'Field title for the plans plans name');

  String userProfileFoodPlanNameHint() => Intl.message('plans name',
      name: 'userProfileFoodPlanNameHint',
      args: [],
      desc: 'Field hint for the plans plans name');

  String userProfileEmptyStats() =>
      Intl.message('Get started by adding metrics!',
          name: 'userProfileEmptyStats',
          args: [],
          desc: 'Text to show when there is no stats data');

  String userProfileAddMetricButton() => Intl.message('ADD METRIC',
      name: 'userProfileAddMetricButton',
      args: [],
      desc: 'Text for the button to add a new entry into the stats table');

  /// -------------------- User Profile Records ------------------------  //
  String userProfileRecordsDateColumn() => Intl.message('Date',
      name: 'userProfileRecordsDateColumn',
      args: [],
      desc: 'Text for the date column in the stats table');

  String userProfileRecordsWeightColumn() => Intl.message('Weight',
      name: 'userProfileRecordsWeightColumn',
      args: [],
      desc: 'Text for the weight column in the stats table');

  String userProfileRecordsWaistColumn() => Intl.message('Waist',
      name: 'userProfileRecordsWaistColumn',
      args: [],
      desc: 'Text for the waist column in the stats table');

  String userProfileRecordsChestColumn() => Intl.message('Chest',
      name: 'userProfileRecordsChestColumn',
      args: [],
      desc: 'Text for the chest column in the stats table');

  String userProfileRecordsLeftArmColumn() => Intl.message('Left Arm',
      name: 'userProfileRecordsLeftArmColumn',
      args: [],
      desc: 'Text for the left arm column in the stats table');

  String userProfileRecordsRightArmColumn() => Intl.message('Right Arm',
      name: 'userProfileRecordsRightArmColumn',
      args: [],
      desc: 'Text for the right arm column in the stats table');

  String userProfileRecordsLeftLegColumn() => Intl.message('Left Leg',
      name: 'userProfileRecordsLeftLegColumn',
      args: [],
      desc: 'Text for the left leg column in the stats table');

  String userProfileRecordsRightLegColumn() => Intl.message('Right Leg',
      name: 'userProfileRecordsRightLegColumn',
      args: [],
      desc: 'Text for the right leg column in the stats table');

  /// -------------------- User Profile Records ------------------------  //
  String userProfileContactInformation() => Intl.message('Contact Information',
      name: 'userProfileContactInformation',
      args: [],
      desc: 'Title for the contact information section');

  String userProfileContactInformationEmail() => Intl.message('Email',
      name: 'userProfileContactInformationEmail',
      args: [],
      desc: 'Title for the email field');

  String userProfileContactInformationPhoneNumber() =>
      Intl.message('Phone Number',
          name: 'userProfileContactInformationPhoneNumber',
          args: [],
          desc: 'Title for the phone number field');

  /// -------------------- Food Plan Component ------------------------  //

  String foodPlanComponentAdd() => Intl.message('Add',
      name: 'foodPlanComponentAdd',
      args: [],
      desc: 'Text to show in the action button in the food plan component');

  String foodPlanComponentAddItem() => Intl.message('Add Item',
      name: 'foodPlanComponentAddItem',
      args: [],
      desc: 'Hint text for the plans item search field');

  String foodPlanComponentBreakfast() => Intl.message('Breakfast',
      name: 'foodPlanComponentBreakfast',
      args: [],
      desc: 'Text for the break fast plans section');

  String foodPlanComponentLunch() => Intl.message('Lunch',
      name: 'foodPlanComponentLunch',
      args: [],
      desc: 'Text for the lunch plans section');

  String foodPlanComponentDinner() => Intl.message('Dinner',
      name: 'foodPlanComponentDinner',
      args: [],
      desc: 'Text for the dinner plans section');

  String foodPlanComponentSnack() => Intl.message('Snack',
      name: 'foodPlanComponentSnack',
      args: [],
      desc: 'Text for the snack plans section');

  String foodPlanComponentTotals() => Intl.message('Totals',
      name: 'foodPlanComponentTotals',
      args: [],
      desc: 'Text for the totals plans group');

  /// -------------------- FOOD ITEM SEARCH COMPONENT --------------- //

  String itemSearchComponentStartTypingToSearch() => Intl.message(
      'Start typing to search items',
      name: 'itemSearchComponentStartTypingToSearch',
      args: [],
      desc:
          'String to show when there no search query in the item search component');

  String noFoodItemsMatchingQuery(query) => Intl.message(
      'No food items matching: $query',
      name: 'noFoodItemsMatchingQuery',
      args: [query],
      desc:
          'String to show when there no search query in the item search component');

  String searchFieldHint() => Intl.message('Search food',
      name: 'searchFieldHint',
      args: [],
      desc: 'hint for the food search field.');

  /// -------------------- Plan Editor View ------------------------  //

  String planEditorViewPlanHasBeenExported() => Intl.message(
      'Food plans has been exported and saved.',
      name: 'planEditorViewPlanHasBeenExported',
      args: [],
      desc:
          'Message that appears to let the user know that the plans has been exported and saved.');

  String planEditorViewCurrentPlanButton() => Intl.message('Current Plan',
      name: 'planEditorViewCurrentPlanButton',
      args: [],
      desc:
          'Text for the button that activates the plans plans as the current plans plans');

  String planEditorViewSaveDialogTitle() => Intl.message('Save Food Plan',
      name: 'planEditorViewSaveDialogTitle',
      args: [],
      desc: 'Title for the save plans plans dialog');

  String planEditorViewCalorieCount() => Intl.message('Calorie Count',
      name: 'planEditorViewCalorieCount',
      args: [],
      desc: 'Title for the calorie count graph');

  String planEditorViewMacroNutrients() => Intl.message('Macro Nutrients',
      name: 'planEditorViewMacroNutrients',
      args: [],
      desc: 'Title for the macro nutrient graph');

  String planEditorViewMicroNutrients() => Intl.message('Micro Nutrients',
      name: 'planEditorViewMicroNutrients',
      args: [],
      desc: 'Title for the micro nutrient graph');

  // plan editor notifications
  String planEditorViewCopiedPlanLink() => Intl.message('Copied plan link',
      name: 'planEditorViewCopiedPlanLink',
      args: [],
      desc: 'Text for indicating the user a link has been copied');

  String planEditorViewFailedToCreatePlanLink() => Intl.message(
      'Failed to create plan link',
      name: 'planEditorViewFailedToCreatePlanLink',
      args: [],
      desc:
          'Text for indicating the user when a link has failed to be created');

  // plan editor keyboard shortcuts

  String planEditorViewShortcutMoveRightLeft() =>
      Intl.message('Move right/left',
          name: 'planEditorViewShortcutMoveRightLeft',
          args: [],
          desc: 'move right/left shortcut title');

  String planEditorViewShortcutMoveNextPrevious() =>
      Intl.message('Move to next/previous section',
          name: 'planEditorViewShortcutMoveNextPrevious',
          args: [],
          desc: 'move next/previous shortcut title');

  String planEditorViewShortcutExpandShrink() =>
      Intl.message('Expand/shrink selection',
          name: 'planEditorViewShortcutExpandShrink',
          args: [],
          desc: 'expand/shrink shortcut title');

  String planEditorViewShortcutCopy() => Intl.message('Copy',
      name: 'planEditorViewShortcutCopy',
      args: [],
      desc: 'copy shortcut title');

  String planEditorViewShortcutPaste() => Intl.message('Paste',
      name: 'planEditorViewShortcutPaste',
      args: [],
      desc: 'paste shortcut title');

  String planEditorViewShortcutDelete() => Intl.message('Delete',
      name: 'planEditorViewShortcutDelete',
      args: [],
      desc: 'delete shortcut title');

  // ------------- PORTIONS MODAL ------------- //

  String portionsModalQuantity() => Intl.message('Quantity',
      name: 'portionsModalQuantity',
      args: [],
      desc: 'Title quantity number field');

  String portionsModalQuantityHint() => Intl.message('Quantity: e.g "1.2"',
      name: 'portionsModalQuantityHint',
      args: [],
      desc: 'Hint for the quantity number field');

  String planShareDialogTitle() => Intl.message('Send Food Plan',
      name: 'planShareDialogTitle',
      args: [],
      desc: 'Title for plans share dialog');

  String pageBarCloseDialogTitle() => Intl.message('Unsaved document',
      name: 'pageBarCloseDialogTitle',
      args: [],
      desc: 'Title for the confirm close document dialog');

  String pageBarCloseDialogBodyOne() => Intl.message(
      'You are closing an unsaved document. All data will be lost.',
      name: 'pageBarCloseDialogBodyOne',
      args: [],
      desc: 'Body text for the close unsaved document dialog.');

  String pageBarCloseDialogBodyTwo() =>
      Intl.message('Are you sure you want to close this document?',
          name: 'pageBarCloseDialogBodyTwo',
          args: [],
          desc: 'Body text for the close unsaved document dialog.');

  String pageBarCloseDialogCloseButton() => Intl.message('Close',
      name: 'pageBarCloseDialogCloseButton',
      args: [],
      desc:
          'Text for the close button in the close document confirmation dialog.');

  /// -------------------- Supporters Page ------------------------  //

  String becomeASupporterTitle() => Intl.message('Become a Supporter',
      name: 'becomeASupporterTitle',
      args: [],
      desc: 'Title for the supporter page.');

  String becomeASupporterSubtitle() =>
      Intl.message('You contributions will help Bodistics grow!',
          name: 'becomeASupporterSubtitle',
          args: [],
          desc: 'Subtitle for the become a supporter page.');

  // -- SUPPORTER SUBSCRIPTION STRINGS
  String becomeASupporterTierOneName() => Intl.message('Supporter',
      name: 'becomeASupporterTierOneName',
      args: [],
      desc: 'Name of the tier one subscription.');

  String becomeASupporterTierOnePointOne() =>
      Intl.message('You like the project',
          name: 'becomeASupporterTierOnePointOne',
          args: [],
          desc: 'Bullet point 1 description the supporter tier subscription');

  String becomeASupporterTierOnePointTwo() =>
      Intl.message("You'd like to see Bodistics succeed",
          name: 'becomeASupporterTierOnePointTwo',
          args: [],
          desc: 'Bullet point 2 description the supporter tier subscription');

  String becomeASupporterTierOnePointThree() =>
      Intl.message('But you are not ready to use Bodistics',
          name: 'becomeASupporterTierOnePointThree',
          args: [],
          desc: 'Bullet point 3 description the supporter tier subscription');

  String becomeASupporterTierTwoName() => Intl.message('Believer',
      name: 'becomeASupporterTierTwoName',
      args: [],
      desc: 'Name of the tier two subscription.');

  String becomeASupporterTierTwoPointOne() => Intl.message(
      'You believe this project will become your main tool of work',
      name: 'becomeASupporterTierTwoPointOne',
      args: [],
      desc: 'Bullet point 1 description the believer tier subscription');

  String becomeASupporterTierTwoPointTwo() =>
      Intl.message("You think Bodistics could make your life easier",
          name: 'becomeASupporterTierTwoPointTwo',
          args: [],
          desc: 'Bullet point 2 description the believer tier subscription');

  String becomeASupporterTierTwoPointThree() =>
      Intl.message('You want to contribute to the Bodistics community',
          name: 'becomeASupporterTierTwoPointThree',
          args: [],
          desc: 'Bullet point 3 description the believer tier subscription');

  String becomeASupporterTierThreeName() => Intl.message('Advocator',
      name: 'becomeASupporterTierThreeName',
      args: [],
      desc: 'Name of the tier two subscription.');

  String becomeASupporterTierThreePointOne() =>
      Intl.message('You want to be involved in the Bodistics community',
          name: 'becomeASupporterTierThreePointOne',
          args: [],
          desc: 'Bullet point 1 description the advocator tier subscription');

  String becomeASupporterTierThreePointTwo() =>
      Intl.message("You want to be front of the line when it comes to updates",
          name: 'becomeASupporterTierThreePointTwo',
          args: [],
          desc: 'Bullet point 2 description the advocator tier subscription');

  String becomeASupporterTierThreePointThree() => Intl.message(
      'You want to give direct feedback to the developers to help make Bodistics better',
      name: 'becomeASupporterTierThreePointThree',
      args: [],
      desc: 'Bullet point 3 description the advocator tier subscription');

  String becomeASupporterContinueButton(planPrice) =>
      Intl.message('Continue ($planPrice/Month)',
          name: 'becomeASupporterContinueButton',
          args: [planPrice],
          desc: 'Text for the continue button in the become a supporter page');

  String becomeASupporterPriceRate(planPrice) =>
      Intl.message('$planPrice/Month',
          name: 'becomeASupporterPriceRate',
          args: [planPrice],
          desc: 'Price rate string used in the tier cards.');

  // ------------------------ LOADING STRINGS ------------------------------- //

  String loadingSettings() => Intl.message('Loading settings',
      name: 'loadingSettings',
      args: [],
      desc: 'Text to indicate that we are loading settings');

  String initializingFoodService() => Intl.message('Initializing food service',
      name: 'initializingFoodService',
      args: [],
      desc: 'Text to indicate that we are initializing the food service');

  String importingEnglishFoodDatabase() => Intl.message(
      'Importing English food database',
      name: 'importingEnglishFoodDatabase',
      args: [],
      desc: 'Text to indicate that we are loading the English food database');

  String importingSpanishFoodDatabase() => Intl.message(
      'Importing Spanish food database',
      name: 'importingSpanishFoodDatabase',
      args: [],
      desc: 'Text to indicate that we are loading the Spanish food database');

  String selectingDefaultDatabase() =>
      Intl.message('Selecting default database',
          name: 'selectingDefaultDatabase',
          args: [],
          desc: 'Text to indicate that we are selecting the default database');

  String loadingFileService() => Intl.message('Loading file service',
      name: 'loadingFileService',
      args: [],
      desc: 'Text to indicate that we are loading file service');

  String loadingTabService() => Intl.message('Loading tab service',
      name: 'loadingTabService',
      args: [],
      desc: 'Text to indicate that we are loading tab service');

  /// -------------------- Item's View ------------------------  //
  String foodItemOutOfSync() => Intl.message('Food item out of sync',
      name: 'foodItemOutOfSync',
      args: [],
      desc:
          'Text to indicate that a food item\'s information is difference than that found in the database');

  String itemSynced() => Intl.message('Item Synced',
      name: 'itemSynced',
      args: [],
      desc:
          'Text to indicate that a food item\'s information is synced with the database');


  /// -------------------- Equivalents Tab View ------------------------  //
  String getStartedWithFoodEquivalents() => Intl.message('Get Started With Food Equivalents',
      name: 'getStartedWithFoodEquivalents',
      args: [],
      desc:
      'Title that shoes up when you don\'t have any food equivalents');

  String getStartedWithFoodEquivalentsDescription() => Intl.message('You can use equivalent lists to group food items that have similar nutrient contents. \n Equivalents can be used in meal plans to give your clients a variety of food items to choose from that have the same impact on their meal plan.',
      name: 'getStartedWithFoodEquivalentsDescription',
      args: [],
      desc: "Brief explanation of how to use food equivalents");

  String noItemsInEquivalence() => Intl.message('There are no items in this equivalence. Get started by adding an item!',
      name: 'noItemsInEquivalence',
      args: [],
      desc: "Brief text that shows up when there are no equivalences in the list");

  String areYouSureYouWantToRemoveItemFromEquivalence() => Intl.message('Are you sure you want to remove this item from the equivalent list?',
      name: 'areYouSureYouWantToRemoveItemFromEquivalence',
      args: [],
      desc: "Description of the confirmation modal to remove a food item from equivalence");

  String theItemYouOpenningDoesNotExist() => Intl.message('The item you are trying to open does not exist in the database.',
      name: 'theItemYouOpenningDoesNotExist',
      args: [],
      desc: "Description of the alert modal that shows up when the item you are trying to open does not exist in the database");

  String theAverageFoodPortionIsComputed() => Intl.message('The average food portion is computed from the items in the equivalence.',
      name: 'theAverageFoodPortionIsComputed',
      args: [],
      desc: "Description that explains what an average portion is.");
}
