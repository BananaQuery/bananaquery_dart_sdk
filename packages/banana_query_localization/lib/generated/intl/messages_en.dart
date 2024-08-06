// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(planPrice) => "Continue (${planPrice}/Month)";

  static String m1(planPrice) => "${planPrice}/Month";

  static String m2(filename) =>
      "Cannot open \"${filename}\", the file is invalid.";

  static String m3(query) => "No food items matching: ${query}";

  static String m4(attemptCount) =>
      "${Intl.plural(attemptCount, zero: 'No attempts', one: '${attemptCount} attempt', other: '${attemptCount} attempts')}";

  static String m5(email) => "to: ${email}";

  static String m6(planName) => "${planName} (not sent)";

  static String m7(planName) => "${planName} (sending)";

  static String m8(planName) => "${planName}";

  static String m9(portion) =>
      "You are about to delete the ${portion} portion, do you want to continue?";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "acceptButtonText": MessageLookupByLibrary.simpleMessage("ACCEPT"),
        "addButtonText": MessageLookupByLibrary.simpleMessage("Add"),
        "addItem": MessageLookupByLibrary.simpleMessage("Add Item"),
        "alanine": MessageLookupByLibrary.simpleMessage("Alanine"),
        "alcoholEthyl": MessageLookupByLibrary.simpleMessage("Alcohol, ethyl"),
        "americanIndianalaskaNativeFoods": MessageLookupByLibrary.simpleMessage(
            "American Indian/Alaska Native Foods"),
        "amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "appSettingsTabTitle":
            MessageLookupByLibrary.simpleMessage("App Settings"),
        "areYouSureYouWantToDeleteMealPlan":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to delete this plan?"),
        "areYouSureYouWantToRemoveItemFromEquivalence":
            MessageLookupByLibrary.simpleMessage(
                "Are you sure you want to remove this item from the equivalent list?"),
        "arginine": MessageLookupByLibrary.simpleMessage("Arginine"),
        "ash": MessageLookupByLibrary.simpleMessage("Ash"),
        "asparticAcid": MessageLookupByLibrary.simpleMessage("Aspartic acid"),
        "averagePortion":
            MessageLookupByLibrary.simpleMessage("Average Portion"),
        "babyFoods": MessageLookupByLibrary.simpleMessage("Baby Foods"),
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "bakedProducts": MessageLookupByLibrary.simpleMessage("Baked Products"),
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
        "becomeASupporterTierTwoPointThree": MessageLookupByLibrary.simpleMessage(
            "You believe in Bodistics\' vision and you want to be part of it"),
        "becomeASupporterTierTwoPointTwo": MessageLookupByLibrary.simpleMessage(
            "You think Bodistics could make your life easier"),
        "becomeASupporterTitle":
            MessageLookupByLibrary.simpleMessage("Become a Supporter"),
        "beefProducts": MessageLookupByLibrary.simpleMessage("Beef Products"),
        "betaine": MessageLookupByLibrary.simpleMessage("Betaine"),
        "betasitosterol":
            MessageLookupByLibrary.simpleMessage("Beta-sitosterol"),
        "beverages": MessageLookupByLibrary.simpleMessage("Beverages"),
        "breakfastCereals":
            MessageLookupByLibrary.simpleMessage("Breakfast Cereals"),
        "caffeine": MessageLookupByLibrary.simpleMessage("Caffeine"),
        "calciumCa": MessageLookupByLibrary.simpleMessage("Calcium, Ca"),
        "calorieDistribution":
            MessageLookupByLibrary.simpleMessage("Calorie Distribution"),
        "calories": MessageLookupByLibrary.simpleMessage("Calories"),
        "campesterol": MessageLookupByLibrary.simpleMessage("Campesterol"),
        "cancelButtonText": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cannotOpenFile": m2,
        "carb": MessageLookupByLibrary.simpleMessage("Carb"),
        "carbohydrateByDifference":
            MessageLookupByLibrary.simpleMessage("Carbohydrate, by difference"),
        "carbohydrates": MessageLookupByLibrary.simpleMessage("Carbohydrates"),
        "caroteneAlpha":
            MessageLookupByLibrary.simpleMessage("Carotene, alpha"),
        "caroteneBeta": MessageLookupByLibrary.simpleMessage("Carotene, beta"),
        "cerealGrainsAndPasta":
            MessageLookupByLibrary.simpleMessage("Cereal Grains and Pasta"),
        "cholesterol": MessageLookupByLibrary.simpleMessage("Cholesterol"),
        "cholineTotal": MessageLookupByLibrary.simpleMessage("Choline, total"),
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
        "copperCu": MessageLookupByLibrary.simpleMessage("Copper, Cu"),
        "createLink": MessageLookupByLibrary.simpleMessage("Create link"),
        "createNewPlan":
            MessageLookupByLibrary.simpleMessage("Create New Plan"),
        "cryptoxanthinBeta":
            MessageLookupByLibrary.simpleMessage("Cryptoxanthin, beta"),
        "cystine": MessageLookupByLibrary.simpleMessage("Cystine"),
        "dairyAndEggProducts":
            MessageLookupByLibrary.simpleMessage("Dairy and Egg Products"),
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
        "equivalence": MessageLookupByLibrary.simpleMessage("Equivalence"),
        "equivalents": MessageLookupByLibrary.simpleMessage("Equivalents"),
        "exitButtonText": MessageLookupByLibrary.simpleMessage("Exit"),
        "exportPlan": MessageLookupByLibrary.simpleMessage("Export plan"),
        "fastFoods": MessageLookupByLibrary.simpleMessage("Fast Foods"),
        "fat": MessageLookupByLibrary.simpleMessage("Fat"),
        "fats": MessageLookupByLibrary.simpleMessage("Fats"),
        "fatsAndOils": MessageLookupByLibrary.simpleMessage("Fats and Oils"),
        "fattyAcidsTotalMonounsaturated": MessageLookupByLibrary.simpleMessage(
            "Fatty acids, total monounsaturated"),
        "fattyAcidsTotalPolyunsaturated": MessageLookupByLibrary.simpleMessage(
            "Fatty acids, total polyunsaturated"),
        "fattyAcidsTotalSaturated": MessageLookupByLibrary.simpleMessage(
            "Fatty acids, total saturated"),
        "fattyAcidsTotalTrans":
            MessageLookupByLibrary.simpleMessage("Fatty acids, total trans"),
        "fattyAcidsTotalTransmonoenoic": MessageLookupByLibrary.simpleMessage(
            "Fatty acids, total trans-monoenoic"),
        "fattyAcidsTotalTranspolyenoic": MessageLookupByLibrary.simpleMessage(
            "Fatty acids, total trans-polyenoic"),
        "fiber": MessageLookupByLibrary.simpleMessage("Fiber"),
        "fiberTotalDietary":
            MessageLookupByLibrary.simpleMessage("Fiber, total dietary"),
        "finfishAndShellfishProducts": MessageLookupByLibrary.simpleMessage(
            "Finfish and Shellfish Products"),
        "finish": MessageLookupByLibrary.simpleMessage("Finish"),
        "fluorideF": MessageLookupByLibrary.simpleMessage("Fluoride, F"),
        "folateDfe": MessageLookupByLibrary.simpleMessage("Folate, DFE"),
        "folateFood": MessageLookupByLibrary.simpleMessage("Folate, food"),
        "folateTotal": MessageLookupByLibrary.simpleMessage("Folate, total"),
        "folicAcid": MessageLookupByLibrary.simpleMessage("Folic acid"),
        "foodGroupDistribution":
            MessageLookupByLibrary.simpleMessage("Food Group Distribution"),
        "foodItemOutOfSync":
            MessageLookupByLibrary.simpleMessage("Food item out of sync"),
        "foodItems": MessageLookupByLibrary.simpleMessage("Food Items"),
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
        "foods": MessageLookupByLibrary.simpleMessage("Foods"),
        "friday": MessageLookupByLibrary.simpleMessage("Friday"),
        "fructose": MessageLookupByLibrary.simpleMessage("Fructose"),
        "fruitsAndFruitJuices":
            MessageLookupByLibrary.simpleMessage("Fruits and Fruit Juices"),
        "galactose": MessageLookupByLibrary.simpleMessage("Galactose"),
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
        "getStartedWithFoodEquivalents": MessageLookupByLibrary.simpleMessage(
            "Get Started With Food Equivalents"),
        "getStartedWithFoodEquivalentsDescription":
            MessageLookupByLibrary.simpleMessage(
                "You can use equivalent lists to group food items that have similar nutrient contents. \n Equivalents can be used in meal plans to give your clients a variety of food items to choose from that have the same impact on their meal plan."),
        "glucose": MessageLookupByLibrary.simpleMessage("Glucose"),
        "glutamicAcid": MessageLookupByLibrary.simpleMessage("Glutamic acid"),
        "glycine": MessageLookupByLibrary.simpleMessage("Glycine"),
        "gramWeight": MessageLookupByLibrary.simpleMessage("Gram Weight"),
        "help": MessageLookupByLibrary.simpleMessage("help"),
        "histidine": MessageLookupByLibrary.simpleMessage("Histidine"),
        "hydroxyproline":
            MessageLookupByLibrary.simpleMessage("Hydroxyproline"),
        "import": MessageLookupByLibrary.simpleMessage("Import"),
        "importingEnglishFoodDatabase": MessageLookupByLibrary.simpleMessage(
            "Importing English food database"),
        "importingSpanishFoodDatabase": MessageLookupByLibrary.simpleMessage(
            "Importing Spanish food database"),
        "information": MessageLookupByLibrary.simpleMessage("Information"),
        "initializingFoodService":
            MessageLookupByLibrary.simpleMessage("Initializing food service"),
        "invalidFile": MessageLookupByLibrary.simpleMessage("Invalid file"),
        "invalidWeight": MessageLookupByLibrary.simpleMessage("Invalid weight"),
        "ironFe": MessageLookupByLibrary.simpleMessage("Iron, Fe"),
        "isoleucine": MessageLookupByLibrary.simpleMessage("Isoleucine"),
        "itemDoesNotExist":
            MessageLookupByLibrary.simpleMessage("Item does not exist"),
        "itemSearchComponentStartTypingToSearch":
            MessageLookupByLibrary.simpleMessage(
                "Start typing to search items"),
        "itemSynced": MessageLookupByLibrary.simpleMessage("Item Synced"),
        "keyboardShortcutsText":
            MessageLookupByLibrary.simpleMessage("Keyboard shortcuts"),
        "lactose": MessageLookupByLibrary.simpleMessage("Lactose"),
        "lambVealAndGameProducts": MessageLookupByLibrary.simpleMessage(
            "Lamb, Veal, and Game Products"),
        "legumesAndLegumeProducts":
            MessageLookupByLibrary.simpleMessage("Legumes and Legume Products"),
        "leucine": MessageLookupByLibrary.simpleMessage("Leucine"),
        "linkButtonText": MessageLookupByLibrary.simpleMessage("Link"),
        "loadingFileService":
            MessageLookupByLibrary.simpleMessage("Loading file service"),
        "loadingSettings":
            MessageLookupByLibrary.simpleMessage("Loading settings"),
        "loadingTabService":
            MessageLookupByLibrary.simpleMessage("Loading tab service"),
        "luteinZeaxanthin":
            MessageLookupByLibrary.simpleMessage("Lutein + zeaxanthin"),
        "lycopene": MessageLookupByLibrary.simpleMessage("Lycopene"),
        "lysine": MessageLookupByLibrary.simpleMessage("Lysine"),
        "macroNutrientDistribution":
            MessageLookupByLibrary.simpleMessage("Macro Nutrient Distribution"),
        "macrosAndGroups":
            MessageLookupByLibrary.simpleMessage("Macros & Food Groups"),
        "magnesiumMg": MessageLookupByLibrary.simpleMessage("Magnesium, Mg"),
        "maltose": MessageLookupByLibrary.simpleMessage("Maltose"),
        "manganeseMn": MessageLookupByLibrary.simpleMessage("Manganese, Mn"),
        "markAsCurrent":
            MessageLookupByLibrary.simpleMessage("Mark as current"),
        "meals": MessageLookupByLibrary.simpleMessage("Meals"),
        "mealsEntreesAndSideDishes": MessageLookupByLibrary.simpleMessage(
            "Meals, Entrees, and Side Dishes"),
        "methionine": MessageLookupByLibrary.simpleMessage("Methionine"),
        "microNutrients":
            MessageLookupByLibrary.simpleMessage("Micro Nutrients"),
        "minerals": MessageLookupByLibrary.simpleMessage("Minerals"),
        "monday": MessageLookupByLibrary.simpleMessage("Monday"),
        "mufa141": MessageLookupByLibrary.simpleMessage("MUFA 14:1"),
        "mufa151": MessageLookupByLibrary.simpleMessage("MUFA 15:1"),
        "mufa161": MessageLookupByLibrary.simpleMessage("MUFA 16:1"),
        "mufa161C": MessageLookupByLibrary.simpleMessage("MUFA 16:1 c"),
        "mufa171": MessageLookupByLibrary.simpleMessage("MUFA 17:1"),
        "mufa181": MessageLookupByLibrary.simpleMessage("MUFA 18:1"),
        "mufa18111T181tN7":
            MessageLookupByLibrary.simpleMessage("MUFA 18:1-11 t (18:1t n-7)"),
        "mufa181C": MessageLookupByLibrary.simpleMessage("MUFA 18:1 c"),
        "mufa201": MessageLookupByLibrary.simpleMessage("MUFA 20:1"),
        "mufa221": MessageLookupByLibrary.simpleMessage("MUFA 22:1"),
        "mufa221C": MessageLookupByLibrary.simpleMessage("MUFA 22:1 c"),
        "mufa241C": MessageLookupByLibrary.simpleMessage("MUFA 24:1 c"),
        "newEquivalence":
            MessageLookupByLibrary.simpleMessage("New Equivalence"),
        "newFoodPortion":
            MessageLookupByLibrary.simpleMessage("New Food portion"),
        "newMealPlan": MessageLookupByLibrary.simpleMessage("New Meal Plan"),
        "newPortion": MessageLookupByLibrary.simpleMessage("New Portion"),
        "niacin": MessageLookupByLibrary.simpleMessage("Niacin"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noAveragePortion":
            MessageLookupByLibrary.simpleMessage("No Average Portion"),
        "noChangesHaveBeenMade":
            MessageLookupByLibrary.simpleMessage("No changes have been made"),
        "noFoodItemsMatchingQuery": m3,
        "noItems": MessageLookupByLibrary.simpleMessage("No Items"),
        "noItemsInEquivalence": MessageLookupByLibrary.simpleMessage(
            "There are no items in this equivalence. Get started by adding an item!"),
        "nutAndSeedProducts":
            MessageLookupByLibrary.simpleMessage("Nut and Seed Products"),
        "okButtonText": MessageLookupByLibrary.simpleMessage("OK"),
        "open": MessageLookupByLibrary.simpleMessage("Open"),
        "pageBarCloseDialogBodyOne": MessageLookupByLibrary.simpleMessage(
            "You are closing an unsaved document. All data will be lost."),
        "pageBarCloseDialogBodyTwo": MessageLookupByLibrary.simpleMessage(
            "Are you sure you want to close this document?"),
        "pageBarCloseDialogCloseButton":
            MessageLookupByLibrary.simpleMessage("Close"),
        "pageBarCloseDialogTitle":
            MessageLookupByLibrary.simpleMessage("Unsaved document"),
        "pantothenicAcid":
            MessageLookupByLibrary.simpleMessage("Pantothenic acid"),
        "phenylalanine": MessageLookupByLibrary.simpleMessage("Phenylalanine"),
        "phosphorusP": MessageLookupByLibrary.simpleMessage("Phosphorus, P"),
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
        "phytosterols": MessageLookupByLibrary.simpleMessage("Phytosterols"),
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
        "planEditorViewMicroNutrients":
            MessageLookupByLibrary.simpleMessage("Micro Nutrients"),
        "planEditorViewPlanHasBeenExported":
            MessageLookupByLibrary.simpleMessage(
                "Food plan has been exported and saved."),
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
        "porkProducts": MessageLookupByLibrary.simpleMessage("Pork Products"),
        "portion": MessageLookupByLibrary.simpleMessage("portion"),
        "portionName": MessageLookupByLibrary.simpleMessage("Portion Name"),
        "portionNameHint": MessageLookupByLibrary.simpleMessage("e.g: big cup"),
        "portions": MessageLookupByLibrary.simpleMessage("Portions"),
        "portionsModalQuantity":
            MessageLookupByLibrary.simpleMessage("Quantity"),
        "portionsModalQuantityHint":
            MessageLookupByLibrary.simpleMessage("Quantity: e.g \"1.2\""),
        "potassiumK": MessageLookupByLibrary.simpleMessage("Potassium, K"),
        "poultryProducts":
            MessageLookupByLibrary.simpleMessage("Poultry Products"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy policy"),
        "proline": MessageLookupByLibrary.simpleMessage("Proline"),
        "protein": MessageLookupByLibrary.simpleMessage("Protein"),
        "proteins": MessageLookupByLibrary.simpleMessage("Proteins"),
        "pufa182": MessageLookupByLibrary.simpleMessage("PUFA 18:2"),
        "pufa182Clas": MessageLookupByLibrary.simpleMessage("PUFA 18:2 CLAs"),
        "pufa182I": MessageLookupByLibrary.simpleMessage("PUFA 18:2 i"),
        "pufa182N6Cc":
            MessageLookupByLibrary.simpleMessage("PUFA 18:2 n-6 c,c"),
        "pufa183": MessageLookupByLibrary.simpleMessage("PUFA 18:3"),
        "pufa183N3CccAla":
            MessageLookupByLibrary.simpleMessage("PUFA 18:3 n-3 c,c,c (ALA)"),
        "pufa183N6Ccc":
            MessageLookupByLibrary.simpleMessage("PUFA 18:3 n-6 c,c,c"),
        "pufa183i": MessageLookupByLibrary.simpleMessage("PUFA 18:3i"),
        "pufa184": MessageLookupByLibrary.simpleMessage("PUFA 18:4"),
        "pufa202N6Cc":
            MessageLookupByLibrary.simpleMessage("PUFA 20:2 n-6 c,c"),
        "pufa203": MessageLookupByLibrary.simpleMessage("PUFA 20:3"),
        "pufa203N3": MessageLookupByLibrary.simpleMessage("PUFA 20:3 n-3"),
        "pufa203N6": MessageLookupByLibrary.simpleMessage("PUFA 20:3 n-6"),
        "pufa204": MessageLookupByLibrary.simpleMessage("PUFA 20:4"),
        "pufa215": MessageLookupByLibrary.simpleMessage("PUFA 21:5"),
        "pufa224": MessageLookupByLibrary.simpleMessage("PUFA 22:4"),
        "pufa225N3Dpa":
            MessageLookupByLibrary.simpleMessage("PUFA 22:5 n-3 (DPA)"),
        "pufa226N3Dha":
            MessageLookupByLibrary.simpleMessage("PUFA 22:6 n-3 (DHA)"),
        "pufa24N6": MessageLookupByLibrary.simpleMessage("PUFA 2:4 n-6"),
        "pufa25N3Epa":
            MessageLookupByLibrary.simpleMessage("PUFA 2:5 n-3 (EPA)"),
        "quantity": MessageLookupByLibrary.simpleMessage("Quantity"),
        "rda": MessageLookupByLibrary.simpleMessage("RDA"),
        "readOnlyLink": MessageLookupByLibrary.simpleMessage("Read-only link"),
        "removeItem": MessageLookupByLibrary.simpleMessage("Remove Item"),
        "restaurantFoods":
            MessageLookupByLibrary.simpleMessage("Restaurant Foods"),
        "retinol": MessageLookupByLibrary.simpleMessage("Retinol"),
        "riboflavin": MessageLookupByLibrary.simpleMessage("Riboflavin"),
        "saturday": MessageLookupByLibrary.simpleMessage("Saturday"),
        "sausagesAndLuncheonMeats":
            MessageLookupByLibrary.simpleMessage("Sausages and Luncheon Meats"),
        "saveButtonText": MessageLookupByLibrary.simpleMessage("Save"),
        "saveDialogTitle":
            MessageLookupByLibrary.simpleMessage("Save Food Plan"),
        "searchFieldHint": MessageLookupByLibrary.simpleMessage("Search food"),
        "selectButtonText": MessageLookupByLibrary.simpleMessage("Select"),
        "selectItemButtonText":
            MessageLookupByLibrary.simpleMessage("Select Item"),
        "selectingDefaultDatabase":
            MessageLookupByLibrary.simpleMessage("Selecting default database"),
        "seleniumSe": MessageLookupByLibrary.simpleMessage("Selenium, Se"),
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
        "serine": MessageLookupByLibrary.simpleMessage("Serine"),
        "settingsViewDefaultUnits":
            MessageLookupByLibrary.simpleMessage("Default Units"),
        "settingsViewFoodDatabases":
            MessageLookupByLibrary.simpleMessage("Food Databases"),
        "settingsViewImportDatabase":
            MessageLookupByLibrary.simpleMessage("Import Database"),
        "settingsViewSettings":
            MessageLookupByLibrary.simpleMessage("Settings"),
        "sfa100": MessageLookupByLibrary.simpleMessage("SFA 10:0"),
        "sfa120": MessageLookupByLibrary.simpleMessage("SFA 12:0"),
        "sfa130": MessageLookupByLibrary.simpleMessage("SFA 13:0"),
        "sfa140": MessageLookupByLibrary.simpleMessage("SFA 14:0"),
        "sfa150": MessageLookupByLibrary.simpleMessage("SFA 15:0"),
        "sfa160": MessageLookupByLibrary.simpleMessage("SFA 16:0"),
        "sfa170": MessageLookupByLibrary.simpleMessage("SFA 17:0"),
        "sfa180": MessageLookupByLibrary.simpleMessage("SFA 18:0"),
        "sfa200": MessageLookupByLibrary.simpleMessage("SFA 20:0"),
        "sfa220": MessageLookupByLibrary.simpleMessage("SFA 22:0"),
        "sfa240": MessageLookupByLibrary.simpleMessage("SFA 24:0"),
        "sfa40": MessageLookupByLibrary.simpleMessage("SFA 4:0"),
        "sfa60": MessageLookupByLibrary.simpleMessage("SFA 6:0"),
        "sfa80": MessageLookupByLibrary.simpleMessage("SFA 8:0"),
        "shareMealPlan":
            MessageLookupByLibrary.simpleMessage("Share meal plan"),
        "shareMealPlanMessage": MessageLookupByLibrary.simpleMessage(
            "Give your clients access to this meal plan. The meal plan will be automatically sync everytime you save the file"),
        "slideAvocadoToConfirm": MessageLookupByLibrary.simpleMessage(
            "Slide the avocado to confirm"),
        "snacks": MessageLookupByLibrary.simpleMessage("Snacks"),
        "sodiumNa": MessageLookupByLibrary.simpleMessage("Sodium, Na"),
        "soupsSaucesAndGravies":
            MessageLookupByLibrary.simpleMessage("Soups, Sauces, and Gravies"),
        "spicesAndHerbs":
            MessageLookupByLibrary.simpleMessage("Spices and Herbs"),
        "starch": MessageLookupByLibrary.simpleMessage("Starch"),
        "stigmasterol": MessageLookupByLibrary.simpleMessage("Stigmasterol"),
        "sucrose": MessageLookupByLibrary.simpleMessage("Sucrose"),
        "sugarsTotalIncludingNlea": MessageLookupByLibrary.simpleMessage(
            "Sugars, total including NLEA"),
        "sunday": MessageLookupByLibrary.simpleMessage("Sunday"),
        "sweets": MessageLookupByLibrary.simpleMessage("Sweets"),
        "syncButtonText": MessageLookupByLibrary.simpleMessage("Sync"),
        "tfa161T": MessageLookupByLibrary.simpleMessage("TFA 16:1 t"),
        "tfa181T": MessageLookupByLibrary.simpleMessage("TFA 18:1 t"),
        "tfa182TNotFurtherDefined": MessageLookupByLibrary.simpleMessage(
            "TFA 18:2 t not further defined"),
        "tfa182Tt": MessageLookupByLibrary.simpleMessage("TFA 18:2 t,t"),
        "tfa221T": MessageLookupByLibrary.simpleMessage("TFA 22:1 t"),
        "theAverageFoodPortionIsComputed": MessageLookupByLibrary.simpleMessage(
            "The average food portion is computed from the items in the equivalence."),
        "theFoodItemNowMatchesTheDatabase": MessageLookupByLibrary.simpleMessage(
            "The food item in your meal plan now matches the food item in your database and will now be marked as synced."),
        "theFoodPlanWillBeDeleted": MessageLookupByLibrary.simpleMessage(
            "The food plan will be deleted from your document\'s profile and will no longer be accessible. This action cannot be undone."),
        "theItemWillStillBeMarkedAsNotSynced": MessageLookupByLibrary.simpleMessage(
            "The item will still be marked as not synced. You can always come back and sync it later."),
        "theItemYouOpenningDoesNotExist": MessageLookupByLibrary.simpleMessage(
            "The item you are trying to open does not exist in the database."),
        "theobromine": MessageLookupByLibrary.simpleMessage("Theobromine"),
        "thiamin": MessageLookupByLibrary.simpleMessage("Thiamin"),
        "threonine": MessageLookupByLibrary.simpleMessage("Threonine"),
        "thursday": MessageLookupByLibrary.simpleMessage("Thursday"),
        "tocopherolBeta":
            MessageLookupByLibrary.simpleMessage("Tocopherol, beta"),
        "tocopherolDelta":
            MessageLookupByLibrary.simpleMessage("Tocopherol, delta"),
        "tocopherolGamma":
            MessageLookupByLibrary.simpleMessage("Tocopherol, gamma"),
        "tocotrienolAlpha":
            MessageLookupByLibrary.simpleMessage("Tocotrienol, alpha"),
        "tocotrienolBeta":
            MessageLookupByLibrary.simpleMessage("Tocotrienol, beta"),
        "tocotrienolDelta":
            MessageLookupByLibrary.simpleMessage("Tocotrienol, delta"),
        "tocotrienolGamma":
            MessageLookupByLibrary.simpleMessage("Tocotrienol, gamma"),
        "totalLipidFat":
            MessageLookupByLibrary.simpleMessage("Total lipid (fat)"),
        "tryptophan": MessageLookupByLibrary.simpleMessage("Tryptophan"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Tuesday"),
        "tyrosine": MessageLookupByLibrary.simpleMessage("Tyrosine"),
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
        "userProfileCurrentDietPlan":
            MessageLookupByLibrary.simpleMessage("Current Diet Plan"),
        "userProfileCurrentMealPlan":
            MessageLookupByLibrary.simpleMessage("Current Meal Plan"),
        "userProfileDateOfBirth":
            MessageLookupByLibrary.simpleMessage("Date of Birth"),
        "userProfileDietPlans":
            MessageLookupByLibrary.simpleMessage("Diet Plans"),
        "userProfileEmptyCurrentDietPlan":
            MessageLookupByLibrary.simpleMessage("No assigned plan"),
        "userProfileEmptyCurrentMealPlan":
            MessageLookupByLibrary.simpleMessage("No assigned plans"),
        "userProfileEmptyStats": MessageLookupByLibrary.simpleMessage(
            "Get started by adding metrics!"),
        "userProfileFoodPlanName":
            MessageLookupByLibrary.simpleMessage("Food plan name"),
        "userProfileFoodPlanNameHint":
            MessageLookupByLibrary.simpleMessage("plan name"),
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
        "userProfileRecordsBodyFatColumn":
            MessageLookupByLibrary.simpleMessage("Body Fat %"),
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
        "valine": MessageLookupByLibrary.simpleMessage("Valine"),
        "vegetablesAndVegetableProducts": MessageLookupByLibrary.simpleMessage(
            "Vegetables and Vegetable Products"),
        "vitaminAIu": MessageLookupByLibrary.simpleMessage("Vitamin A, IU"),
        "vitaminARae": MessageLookupByLibrary.simpleMessage("Vitamin A, RAE"),
        "vitaminB12": MessageLookupByLibrary.simpleMessage("Vitamin B-12"),
        "vitaminB12Added":
            MessageLookupByLibrary.simpleMessage("Vitamin B-12, added"),
        "vitaminB6": MessageLookupByLibrary.simpleMessage("Vitamin B-6"),
        "vitaminCTotalAscorbicAcid": MessageLookupByLibrary.simpleMessage(
            "Vitamin C, total ascorbic acid"),
        "vitaminD2Ergocalciferol":
            MessageLookupByLibrary.simpleMessage("Vitamin D2 (ergocalciferol)"),
        "vitaminD3Cholecalciferol": MessageLookupByLibrary.simpleMessage(
            "Vitamin D3 (cholecalciferol)"),
        "vitaminDD2D3":
            MessageLookupByLibrary.simpleMessage("Vitamin D (D2 + D3)"),
        "vitaminDD2D3InternationalUnits": MessageLookupByLibrary.simpleMessage(
            "Vitamin D (D2 + D3), International Units"),
        "vitaminEAdded":
            MessageLookupByLibrary.simpleMessage("Vitamin E, added"),
        "vitaminEAlphatocopherol": MessageLookupByLibrary.simpleMessage(
            "Vitamin E (alpha-tocopherol)"),
        "vitaminKDihydrophylloquinone": MessageLookupByLibrary.simpleMessage(
            "Vitamin K (Dihydrophylloquinone)"),
        "vitaminKMenaquinone4":
            MessageLookupByLibrary.simpleMessage("Vitamin K (Menaquinone-4)"),
        "vitaminKPhylloquinone":
            MessageLookupByLibrary.simpleMessage("Vitamin K (phylloquinone)"),
        "vitamins": MessageLookupByLibrary.simpleMessage("Vitamins"),
        "water": MessageLookupByLibrary.simpleMessage("Water"),
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
                "Your food item in your meal plan will be marked as synced."),
        "zincZn": MessageLookupByLibrary.simpleMessage("Zinc, Zn")
      };
}
