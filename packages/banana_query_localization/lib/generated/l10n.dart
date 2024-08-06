// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ACCEPT`
  String get acceptButtonText {
    return Intl.message(
      'ACCEPT',
      name: 'acceptButtonText',
      desc: 'text for an ACCEPT button.',
      args: [],
    );
  }

  /// `Add`
  String get addButtonText {
    return Intl.message(
      'Add',
      name: 'addButtonText',
      desc: 'text for an add button.',
      args: [],
    );
  }

  /// `Add Item`
  String get addItem {
    return Intl.message(
      'Add Item',
      name: 'addItem',
      desc: 'add item button text',
      args: [],
    );
  }

  /// `Alanine`
  String get alanine {
    return Intl.message(
      'Alanine',
      name: 'alanine',
      desc: 'Alanine',
      args: [],
    );
  }

  /// `Alcohol, ethyl`
  String get alcoholEthyl {
    return Intl.message(
      'Alcohol, ethyl',
      name: 'alcoholEthyl',
      desc: 'Alcohol, ethyl',
      args: [],
    );
  }

  /// `American Indian/Alaska Native Foods`
  String get americanIndianalaskaNativeFoods {
    return Intl.message(
      'American Indian/Alaska Native Foods',
      name: 'americanIndianalaskaNativeFoods',
      desc: 'American Indian/Alaska Native Foods',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: 'Amount.',
      args: [],
    );
  }

  /// `App Settings`
  String get appSettingsTabTitle {
    return Intl.message(
      'App Settings',
      name: 'appSettingsTabTitle',
      desc: 'title for the app settings tab',
      args: [],
    );
  }

  /// `Are you sure you want to delete this plan?`
  String get areYouSureYouWantToDeleteMealPlan {
    return Intl.message(
      'Are you sure you want to delete this plan?',
      name: 'areYouSureYouWantToDeleteMealPlan',
      desc:
          'Title for the confirmation dialog shown when trying to delete meal plan.',
      args: [],
    );
  }

  /// `Are you sure you want to remove this item from the equivalent list?`
  String get areYouSureYouWantToRemoveItemFromEquivalence {
    return Intl.message(
      'Are you sure you want to remove this item from the equivalent list?',
      name: 'areYouSureYouWantToRemoveItemFromEquivalence',
      desc:
          'Description of the confirmation modal to remove a food item from equivalence',
      args: [],
    );
  }

  /// `Arginine`
  String get arginine {
    return Intl.message(
      'Arginine',
      name: 'arginine',
      desc: 'Arginine',
      args: [],
    );
  }

  /// `Ash`
  String get ash {
    return Intl.message(
      'Ash',
      name: 'ash',
      desc: 'Ash',
      args: [],
    );
  }

  /// `Aspartic acid`
  String get asparticAcid {
    return Intl.message(
      'Aspartic acid',
      name: 'asparticAcid',
      desc: 'Aspartic acid',
      args: [],
    );
  }

  /// `Average Portion`
  String get averagePortion {
    return Intl.message(
      'Average Portion',
      name: 'averagePortion',
      desc: 'average portion',
      args: [],
    );
  }

  /// `Baby Foods`
  String get babyFoods {
    return Intl.message(
      'Baby Foods',
      name: 'babyFoods',
      desc: 'Baby Foods',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: 'text for a back button.',
      args: [],
    );
  }

  /// `Baked Products`
  String get bakedProducts {
    return Intl.message(
      'Baked Products',
      name: 'bakedProducts',
      desc: 'Baked Products',
      args: [],
    );
  }

  /// `Continue ({planPrice}/Month)`
  String becomeASupporterContinueButton(Object planPrice) {
    return Intl.message(
      'Continue ($planPrice/Month)',
      name: 'becomeASupporterContinueButton',
      desc: 'Text for the continue button in the become a supporter page',
      args: [planPrice],
    );
  }

  /// `{planPrice}/Month`
  String becomeASupporterPriceRate(Object planPrice) {
    return Intl.message(
      '$planPrice/Month',
      name: 'becomeASupporterPriceRate',
      desc: 'Price rate string used in the tier cards.',
      args: [planPrice],
    );
  }

  /// `You contributions will help Bodistics grow!`
  String get becomeASupporterSubtitle {
    return Intl.message(
      'You contributions will help Bodistics grow!',
      name: 'becomeASupporterSubtitle',
      desc: 'Subtitle for the become a supporter page.',
      args: [],
    );
  }

  /// `Supporter`
  String get becomeASupporterTierOneName {
    return Intl.message(
      'Supporter',
      name: 'becomeASupporterTierOneName',
      desc: 'Name of the tier one subscription.',
      args: [],
    );
  }

  /// `You like the project`
  String get becomeASupporterTierOnePointOne {
    return Intl.message(
      'You like the project',
      name: 'becomeASupporterTierOnePointOne',
      desc: 'Bullet point 1 description the supporter tier subscription',
      args: [],
    );
  }

  /// `But you are not ready to use Bodistics`
  String get becomeASupporterTierOnePointThree {
    return Intl.message(
      'But you are not ready to use Bodistics',
      name: 'becomeASupporterTierOnePointThree',
      desc: 'Bullet point 3 description the supporter tier subscription',
      args: [],
    );
  }

  /// `You'd like to see Bodistics succeed`
  String get becomeASupporterTierOnePointTwo {
    return Intl.message(
      'You\'d like to see Bodistics succeed',
      name: 'becomeASupporterTierOnePointTwo',
      desc: 'Bullet point 2 description the supporter tier subscription',
      args: [],
    );
  }

  /// `Advocator`
  String get becomeASupporterTierThreeName {
    return Intl.message(
      'Advocator',
      name: 'becomeASupporterTierThreeName',
      desc: 'Name of the tier two subscription.',
      args: [],
    );
  }

  /// `You want to be involved in the Bodistics community`
  String get becomeASupporterTierThreePointOne {
    return Intl.message(
      'You want to be involved in the Bodistics community',
      name: 'becomeASupporterTierThreePointOne',
      desc: 'Bullet point 1 description the advocator tier subscription',
      args: [],
    );
  }

  /// `You want to give direct feedback to the developers to help make Bodistics better`
  String get becomeASupporterTierThreePointThree {
    return Intl.message(
      'You want to give direct feedback to the developers to help make Bodistics better',
      name: 'becomeASupporterTierThreePointThree',
      desc: 'Bullet point 3 description the advocator tier subscription',
      args: [],
    );
  }

  /// `You want to be front of the line when it comes to updates`
  String get becomeASupporterTierThreePointTwo {
    return Intl.message(
      'You want to be front of the line when it comes to updates',
      name: 'becomeASupporterTierThreePointTwo',
      desc: 'Bullet point 2 description the advocator tier subscription',
      args: [],
    );
  }

  /// `Believer`
  String get becomeASupporterTierTwoName {
    return Intl.message(
      'Believer',
      name: 'becomeASupporterTierTwoName',
      desc: 'Name of the tier two subscription.',
      args: [],
    );
  }

  /// `You believe this project will become your main tool of work`
  String get becomeASupporterTierTwoPointOne {
    return Intl.message(
      'You believe this project will become your main tool of work',
      name: 'becomeASupporterTierTwoPointOne',
      desc: 'Bullet point 1 description the believer tier subscription',
      args: [],
    );
  }

  /// `You believe in Bodistics' vision and you want to be part of it`
  String get becomeASupporterTierTwoPointThree {
    return Intl.message(
      'You believe in Bodistics\' vision and you want to be part of it',
      name: 'becomeASupporterTierTwoPointThree',
      desc: 'Bullet point 3 description the believer tier subscription',
      args: [],
    );
  }

  /// `You think Bodistics could make your life easier`
  String get becomeASupporterTierTwoPointTwo {
    return Intl.message(
      'You think Bodistics could make your life easier',
      name: 'becomeASupporterTierTwoPointTwo',
      desc: 'Bullet point 2 description the believer tier subscription',
      args: [],
    );
  }

  /// `Become a Supporter`
  String get becomeASupporterTitle {
    return Intl.message(
      'Become a Supporter',
      name: 'becomeASupporterTitle',
      desc: 'Title for the supporter page.',
      args: [],
    );
  }

  /// `Beef Products`
  String get beefProducts {
    return Intl.message(
      'Beef Products',
      name: 'beefProducts',
      desc: 'Beef Products',
      args: [],
    );
  }

  /// `Betaine`
  String get betaine {
    return Intl.message(
      'Betaine',
      name: 'betaine',
      desc: 'Betaine',
      args: [],
    );
  }

  /// `Beta-sitosterol`
  String get betasitosterol {
    return Intl.message(
      'Beta-sitosterol',
      name: 'betasitosterol',
      desc: 'Beta-sitosterol',
      args: [],
    );
  }

  /// `Beverages`
  String get beverages {
    return Intl.message(
      'Beverages',
      name: 'beverages',
      desc: 'Beverages',
      args: [],
    );
  }

  /// `Breakfast Cereals`
  String get breakfastCereals {
    return Intl.message(
      'Breakfast Cereals',
      name: 'breakfastCereals',
      desc: 'Breakfast Cereals',
      args: [],
    );
  }

  /// `Caffeine`
  String get caffeine {
    return Intl.message(
      'Caffeine',
      name: 'caffeine',
      desc: 'Caffeine',
      args: [],
    );
  }

  /// `Calcium, Ca`
  String get calciumCa {
    return Intl.message(
      'Calcium, Ca',
      name: 'calciumCa',
      desc: 'Calcium, Ca',
      args: [],
    );
  }

  /// `Calorie Distribution`
  String get calorieDistribution {
    return Intl.message(
      'Calorie Distribution',
      name: 'calorieDistribution',
      desc: 'Calorie distribution title',
      args: [],
    );
  }

  /// `Calories`
  String get calories {
    return Intl.message(
      'Calories',
      name: 'calories',
      desc: 'Calories text',
      args: [],
    );
  }

  /// `Campesterol`
  String get campesterol {
    return Intl.message(
      'Campesterol',
      name: 'campesterol',
      desc: 'Campesterol',
      args: [],
    );
  }

  /// `Cancel`
  String get cancelButtonText {
    return Intl.message(
      'Cancel',
      name: 'cancelButtonText',
      desc: 'text for a cancel button.',
      args: [],
    );
  }

  /// `Cannot open "{filename}", the file is invalid.`
  String cannotOpenFile(Object filename) {
    return Intl.message(
      'Cannot open "$filename", the file is invalid.',
      name: 'cannotOpenFile',
      desc: 'Body text for the alert that pops up when you cannot open a file',
      args: [filename],
    );
  }

  /// `Carb`
  String get carb {
    return Intl.message(
      'Carb',
      name: 'carb',
      desc: 'Protein',
      args: [],
    );
  }

  /// `Carbohydrate, by difference`
  String get carbohydrateByDifference {
    return Intl.message(
      'Carbohydrate, by difference',
      name: 'carbohydrateByDifference',
      desc: 'Carbohydrate, by difference',
      args: [],
    );
  }

  /// `Carbohydrates`
  String get carbohydrates {
    return Intl.message(
      'Carbohydrates',
      name: 'carbohydrates',
      desc: 'Carbohydrates text',
      args: [],
    );
  }

  /// `Carotene, alpha`
  String get caroteneAlpha {
    return Intl.message(
      'Carotene, alpha',
      name: 'caroteneAlpha',
      desc: 'Carotene, alpha',
      args: [],
    );
  }

  /// `Carotene, beta`
  String get caroteneBeta {
    return Intl.message(
      'Carotene, beta',
      name: 'caroteneBeta',
      desc: 'Carotene, beta',
      args: [],
    );
  }

  /// `Cereal Grains and Pasta`
  String get cerealGrainsAndPasta {
    return Intl.message(
      'Cereal Grains and Pasta',
      name: 'cerealGrainsAndPasta',
      desc: 'Cereal Grains and Pasta',
      args: [],
    );
  }

  /// `Cholesterol`
  String get cholesterol {
    return Intl.message(
      'Cholesterol',
      name: 'cholesterol',
      desc: 'Cholesterol',
      args: [],
    );
  }

  /// `Choline, total`
  String get cholineTotal {
    return Intl.message(
      'Choline, total',
      name: 'cholineTotal',
      desc: 'Choline, total',
      args: [],
    );
  }

  /// `Untitled Document`
  String get clientDocumentTabUntitledDocument {
    return Intl.message(
      'Untitled Document',
      name: 'clientDocumentTabUntitledDocument',
      desc: 'title for an unsaved client document',
      args: [],
    );
  }

  /// `Confirm your selection`
  String get confirmYourSelection {
    return Intl.message(
      'Confirm your selection',
      name: 'confirmYourSelection',
      desc: 'Confirm your selection text',
      args: [],
    );
  }

  /// `Database Food Item`
  String get conflictingItemDatabaseItemTitle {
    return Intl.message(
      'Database Food Item',
      name: 'conflictingItemDatabaseItemTitle',
      desc:
          'Title shown in the database food item when displaying the two conflicting food items side by side.',
      args: [],
    );
  }

  /// `Item in meal plan`
  String get conflictingItemMealPlanItemTitle {
    return Intl.message(
      'Item in meal plan',
      name: 'conflictingItemMealPlanItemTitle',
      desc:
          'Title shown in the meal plan food item when displaying the two conflicting food items side by side.',
      args: [],
    );
  }

  /// `The conflicting food items in your meal plan will be replaced by the food item present in your database`
  String get conflictingItemReplacementMessage {
    return Intl.message(
      'The conflicting food items in your meal plan will be replaced by the food item present in your database',
      name: 'conflictingItemReplacementMessage',
      desc: 'Confirm your selection text',
      args: [],
    );
  }

  /// `There is an existing food item with the same name but with different data in the meal plan and the database`
  String get conflictingItemSelectionDialogMessageOne {
    return Intl.message(
      'There is an existing food item with the same name but with different data in the meal plan and the database',
      name: 'conflictingItemSelectionDialogMessageOne',
      desc:
          'Message for the dialog shown when you have to choose between food items in a meal plan',
      args: [],
    );
  }

  /// `Note: selecting the food item from the meal plan will cause your entry to be marked as out of sync.`
  String get conflictingItemSelectionDialogMessageTwo {
    return Intl.message(
      'Note: selecting the food item from the meal plan will cause your entry to be marked as out of sync.',
      name: 'conflictingItemSelectionDialogMessageTwo',
      desc:
          'Message for the dialog shown when you have to choose between food items in a meal plan',
      args: [],
    );
  }

  /// `Which item would you like to use in this meal plan?`
  String get conflictingItemSelectionDialogTitle {
    return Intl.message(
      'Which item would you like to use in this meal plan?',
      name: 'conflictingItemSelectionDialogTitle',
      desc:
          'Title for the dialog shown when you have to choose between food items in a meal plan',
      args: [],
    );
  }

  /// `Copper, Cu`
  String get copperCu {
    return Intl.message(
      'Copper, Cu',
      name: 'copperCu',
      desc: 'Copper, Cu',
      args: [],
    );
  }

  /// `Create link`
  String get createLink {
    return Intl.message(
      'Create link',
      name: 'createLink',
      desc: 'Create link button text',
      args: [],
    );
  }

  /// `Create New Plan`
  String get createNewPlan {
    return Intl.message(
      'Create New Plan',
      name: 'createNewPlan',
      desc: 'Create new plan button text.',
      args: [],
    );
  }

  /// `Cryptoxanthin, beta`
  String get cryptoxanthinBeta {
    return Intl.message(
      'Cryptoxanthin, beta',
      name: 'cryptoxanthinBeta',
      desc: 'Cryptoxanthin, beta',
      args: [],
    );
  }

  /// `Cystine`
  String get cystine {
    return Intl.message(
      'Cystine',
      name: 'cystine',
      desc: 'Cystine',
      args: [],
    );
  }

  /// `Dairy and Egg Products`
  String get dairyAndEggProducts {
    return Intl.message(
      'Dairy and Egg Products',
      name: 'dairyAndEggProducts',
      desc: 'Dairy and Egg Products',
      args: [],
    );
  }

  /// `Delete`
  String get deleteButtonText {
    return Intl.message(
      'Delete',
      name: 'deleteButtonText',
      desc: 'text for a delete button.',
      args: [],
    );
  }

  /// `You are about to delete a resource, are you sure you want to continue?`
  String get deleteDialogDefaultMessage {
    return Intl.message(
      'You are about to delete a resource, are you sure you want to continue?',
      name: 'deleteDialogDefaultMessage',
      desc: 'Message for the delete dialog.',
      args: [],
    );
  }

  /// `Are you sure?`
  String get deleteDialogDefaultTitle {
    return Intl.message(
      'Are you sure?',
      name: 'deleteDialogDefaultTitle',
      desc: 'Title for the delete dialog',
      args: [],
    );
  }

  /// `Delete Portion`
  String get deleteFoodPortion {
    return Intl.message(
      'Delete Portion',
      name: 'deleteFoodPortion',
      desc: 'Title for the delete food portion dialog',
      args: [],
    );
  }

  /// `The food item will be deleted from your database, this action cannot be undone.`
  String get deleteItemConfirmationMessage {
    return Intl.message(
      'The food item will be deleted from your database, this action cannot be undone.',
      name: 'deleteItemConfirmationMessage',
      desc: 'Message for the dialog shown when deleting an item',
      args: [],
    );
  }

  /// `Are you sure you want to edit this item?`
  String get deleteItemConfirmationTitle {
    return Intl.message(
      'Are you sure you want to edit this item?',
      name: 'deleteItemConfirmationTitle',
      desc: 'Title for the dialog shown when deleting an item',
      args: [],
    );
  }

  /// `delete plan`
  String get deletePlan {
    return Intl.message(
      'delete plan',
      name: 'deletePlan',
      desc: 'text for an delete plan button.',
      args: [],
    );
  }

  /// `Download`
  String get downloadButtonText {
    return Intl.message(
      'Download',
      name: 'downloadButtonText',
      desc: 'text for a download button.',
      args: [],
    );
  }

  /// `Edit`
  String get editButtonText {
    return Intl.message(
      'Edit',
      name: 'editButtonText',
      desc: 'text for an edit button.',
      args: [],
    );
  }

  /// `Edit Food Portion`
  String get editFoodPortion {
    return Intl.message(
      'Edit Food Portion',
      name: 'editFoodPortion',
      desc: 'Title for the edit food portion dialog',
      args: [],
    );
  }

  /// `Edit Item`
  String get editItem {
    return Intl.message(
      'Edit Item',
      name: 'editItem',
      desc: 'text for a edit item button.',
      args: [],
    );
  }

  /// `Food items don't get changed much so we just want to confirm you want to edit this item.`
  String get editItemConfirmationMessage {
    return Intl.message(
      'Food items don\'t get changed much so we just want to confirm you want to edit this item.',
      name: 'editItemConfirmationMessage',
      desc: 'Message for the dialog shown when editing an item',
      args: [],
    );
  }

  /// `Are you sure you want to edit this item?`
  String get editItemConfirmationTitle {
    return Intl.message(
      'Are you sure you want to edit this item?',
      name: 'editItemConfirmationTitle',
      desc: 'Title for the dialog shown when editing an item',
      args: [],
    );
  }

  /// `Edit Plan`
  String get editPlan {
    return Intl.message(
      'Edit Plan',
      name: 'editPlan',
      desc: 'text for an edit plan button.',
      args: [],
    );
  }

  /// `enter email address`
  String get emailFieldHint {
    return Intl.message(
      'enter email address',
      name: 'emailFieldHint',
      desc: 'hint for an email field.',
      args: [],
    );
  }

  /// `Energy`
  String get energy {
    return Intl.message(
      'Energy',
      name: 'energy',
      desc: 'Energy',
      args: [],
    );
  }

  /// `Equivalence`
  String get equivalence {
    return Intl.message(
      'Equivalence',
      name: 'equivalence',
      desc: 'equivalence',
      args: [],
    );
  }

  /// `Equivalents`
  String get equivalents {
    return Intl.message(
      'Equivalents',
      name: 'equivalents',
      desc: 'equivalents',
      args: [],
    );
  }

  /// `Exit`
  String get exitButtonText {
    return Intl.message(
      'Exit',
      name: 'exitButtonText',
      desc: 'text for an exit button.',
      args: [],
    );
  }

  /// `Export plan`
  String get exportPlan {
    return Intl.message(
      'Export plan',
      name: 'exportPlan',
      desc: 'export plan tooltip',
      args: [],
    );
  }

  /// `Fast Foods`
  String get fastFoods {
    return Intl.message(
      'Fast Foods',
      name: 'fastFoods',
      desc: 'Fast Foods',
      args: [],
    );
  }

  /// `Fat`
  String get fat {
    return Intl.message(
      'Fat',
      name: 'fat',
      desc: 'fat',
      args: [],
    );
  }

  /// `Fats`
  String get fats {
    return Intl.message(
      'Fats',
      name: 'fats',
      desc: 'Fats text',
      args: [],
    );
  }

  /// `Fats and Oils`
  String get fatsAndOils {
    return Intl.message(
      'Fats and Oils',
      name: 'fatsAndOils',
      desc: 'Fats and Oils',
      args: [],
    );
  }

  /// `Fatty acids, total monounsaturated`
  String get fattyAcidsTotalMonounsaturated {
    return Intl.message(
      'Fatty acids, total monounsaturated',
      name: 'fattyAcidsTotalMonounsaturated',
      desc: 'Fatty acids, total monounsaturated',
      args: [],
    );
  }

  /// `Fatty acids, total polyunsaturated`
  String get fattyAcidsTotalPolyunsaturated {
    return Intl.message(
      'Fatty acids, total polyunsaturated',
      name: 'fattyAcidsTotalPolyunsaturated',
      desc: 'Fatty acids, total polyunsaturated',
      args: [],
    );
  }

  /// `Fatty acids, total saturated`
  String get fattyAcidsTotalSaturated {
    return Intl.message(
      'Fatty acids, total saturated',
      name: 'fattyAcidsTotalSaturated',
      desc: 'Fatty acids, total saturated',
      args: [],
    );
  }

  /// `Fatty acids, total trans`
  String get fattyAcidsTotalTrans {
    return Intl.message(
      'Fatty acids, total trans',
      name: 'fattyAcidsTotalTrans',
      desc: 'Fatty acids, total trans',
      args: [],
    );
  }

  /// `Fatty acids, total trans-monoenoic`
  String get fattyAcidsTotalTransmonoenoic {
    return Intl.message(
      'Fatty acids, total trans-monoenoic',
      name: 'fattyAcidsTotalTransmonoenoic',
      desc: 'Fatty acids, total trans-monoenoic',
      args: [],
    );
  }

  /// `Fatty acids, total trans-polyenoic`
  String get fattyAcidsTotalTranspolyenoic {
    return Intl.message(
      'Fatty acids, total trans-polyenoic',
      name: 'fattyAcidsTotalTranspolyenoic',
      desc: 'Fatty acids, total trans-polyenoic',
      args: [],
    );
  }

  /// `Fiber`
  String get fiber {
    return Intl.message(
      'Fiber',
      name: 'fiber',
      desc: 'Fiber',
      args: [],
    );
  }

  /// `Fiber, total dietary`
  String get fiberTotalDietary {
    return Intl.message(
      'Fiber, total dietary',
      name: 'fiberTotalDietary',
      desc: 'Fiber, total dietary',
      args: [],
    );
  }

  /// `Finfish and Shellfish Products`
  String get finfishAndShellfishProducts {
    return Intl.message(
      'Finfish and Shellfish Products',
      name: 'finfishAndShellfishProducts',
      desc: 'Finfish and Shellfish Products',
      args: [],
    );
  }

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
      desc: 'text for a finish button.',
      args: [],
    );
  }

  /// `Fluoride, F`
  String get fluorideF {
    return Intl.message(
      'Fluoride, F',
      name: 'fluorideF',
      desc: 'Fluoride, F',
      args: [],
    );
  }

  /// `Folate, DFE`
  String get folateDfe {
    return Intl.message(
      'Folate, DFE',
      name: 'folateDfe',
      desc: 'Folate, DFE',
      args: [],
    );
  }

  /// `Folate, food`
  String get folateFood {
    return Intl.message(
      'Folate, food',
      name: 'folateFood',
      desc: 'Folate, food',
      args: [],
    );
  }

  /// `Folate, total`
  String get folateTotal {
    return Intl.message(
      'Folate, total',
      name: 'folateTotal',
      desc: 'Folate, total',
      args: [],
    );
  }

  /// `Folic acid`
  String get folicAcid {
    return Intl.message(
      'Folic acid',
      name: 'folicAcid',
      desc: 'Folic acid',
      args: [],
    );
  }

  /// `Food Group Distribution`
  String get foodGroupDistribution {
    return Intl.message(
      'Food Group Distribution',
      name: 'foodGroupDistribution',
      desc: 'Title for food group distribution pie chart.',
      args: [],
    );
  }

  /// `Food item out of sync`
  String get foodItemOutOfSync {
    return Intl.message(
      'Food item out of sync',
      name: 'foodItemOutOfSync',
      desc:
          'Text to indicate that a food item\'s information is difference than that found in the database',
      args: [],
    );
  }

  /// `Food Items`
  String get foodItems {
    return Intl.message(
      'Food Items',
      name: 'foodItems',
      desc: 'Food items',
      args: [],
    );
  }

  /// `Food name`
  String get foodName {
    return Intl.message(
      'Food name',
      name: 'foodName',
      desc: 'Field label for food item\'s name',
      args: [],
    );
  }

  /// `Add`
  String get foodPlanComponentAdd {
    return Intl.message(
      'Add',
      name: 'foodPlanComponentAdd',
      desc: 'Text to show in the action button in the food plan component',
      args: [],
    );
  }

  /// `Add Item`
  String get foodPlanComponentAddItem {
    return Intl.message(
      'Add Item',
      name: 'foodPlanComponentAddItem',
      desc: 'Hint text for the food item search field',
      args: [],
    );
  }

  /// `Breakfast`
  String get foodPlanComponentBreakfast {
    return Intl.message(
      'Breakfast',
      name: 'foodPlanComponentBreakfast',
      desc: 'Text for the break fast food section',
      args: [],
    );
  }

  /// `Dinner`
  String get foodPlanComponentDinner {
    return Intl.message(
      'Dinner',
      name: 'foodPlanComponentDinner',
      desc: 'Text for the dinner food section',
      args: [],
    );
  }

  /// `Lunch`
  String get foodPlanComponentLunch {
    return Intl.message(
      'Lunch',
      name: 'foodPlanComponentLunch',
      desc: 'Text for the lunch food section',
      args: [],
    );
  }

  /// `Snack`
  String get foodPlanComponentSnack {
    return Intl.message(
      'Snack',
      name: 'foodPlanComponentSnack',
      desc: 'Text for the snack food section',
      args: [],
    );
  }

  /// `Totals`
  String get foodPlanComponentTotals {
    return Intl.message(
      'Totals',
      name: 'foodPlanComponentTotals',
      desc: 'Text for the totals plan group',
      args: [],
    );
  }

  /// `Food Plan Editor Help`
  String get foodPlanEditorHelp {
    return Intl.message(
      'Food Plan Editor Help',
      name: 'foodPlanEditorHelp',
      desc: 'Title for the editor\'s help dialog',
      args: [],
    );
  }

  /// `Bodistics food plans hold their own nutritional data for the items they use. \nWe have detected that this item has different nutritional in your food plan than what your database holds.`
  String get foodPlansHoldTheirOwnData {
    return Intl.message(
      'Bodistics food plans hold their own nutritional data for the items they use. \nWe have detected that this item has different nutritional in your food plan than what your database holds.',
      name: 'foodPlansHoldTheirOwnData',
      desc: 'Message for the dialog shown when a food item in conflict.',
      args: [],
    );
  }

  /// `Foods`
  String get foods {
    return Intl.message(
      'Foods',
      name: 'foods',
      desc: 'foods text',
      args: [],
    );
  }

  /// `Friday`
  String get friday {
    return Intl.message(
      'Friday',
      name: 'friday',
      desc: 'Friday: day of the week.',
      args: [],
    );
  }

  /// `Fructose`
  String get fructose {
    return Intl.message(
      'Fructose',
      name: 'fructose',
      desc: 'Fructose',
      args: [],
    );
  }

  /// `Fruits and Fruit Juices`
  String get fruitsAndFruitJuices {
    return Intl.message(
      'Fruits and Fruit Juices',
      name: 'fruitsAndFruitJuices',
      desc: 'Fruits and Fruit Juices',
      args: [],
    );
  }

  /// `Galactose`
  String get galactose {
    return Intl.message(
      'Galactose',
      name: 'galactose',
      desc: 'Galactose',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: 'Confined to bed physical activity',
      args: [],
    );
  }

  /// `female`
  String get genderFemale {
    return Intl.message(
      'female',
      name: 'genderFemale',
      desc: 'The name of female gender enum',
      args: [],
    );
  }

  /// `male`
  String get genderMale {
    return Intl.message(
      'male',
      name: 'genderMale',
      desc: 'The name for the male gender enum',
      args: [],
    );
  }

  /// `Become a supporter`
  String get getStartedBecomeASupporterButton {
    return Intl.message(
      'Become a supporter',
      name: 'getStartedBecomeASupporterButton',
      desc: 'Text for the supporter button',
      args: [],
    );
  }

  /// `Document Shortcuts`
  String get getStartedDocumentShortcutsTitle {
    return Intl.message(
      'Document Shortcuts',
      name: 'getStartedDocumentShortcutsTitle',
      desc: 'Text for the supporter button',
      args: [],
    );
  }

  /// `Global Shortcuts`
  String get getStartedGlobalShortcutsTitle {
    return Intl.message(
      'Global Shortcuts',
      name: 'getStartedGlobalShortcutsTitle',
      desc: 'Title for the global shortcuts section',
      args: [],
    );
  }

  /// `(⌘ + n) New document`
  String get getStartedNewDocumentShortcutMacOS {
    return Intl.message(
      '(⌘ + n) New document',
      name: 'getStartedNewDocumentShortcutMacOS',
      desc: 'Text for the new document shortcut',
      args: [],
    );
  }

  /// `(⌘ + s) Save document`
  String get getStartedSaveDocumentShortcut {
    return Intl.message(
      '(⌘ + s) Save document',
      name: 'getStartedSaveDocumentShortcut',
      desc: 'Text fot the save document shortcut',
      args: [],
    );
  }

  /// `Support Bodistics`
  String get getStartedSupporterSectionTitle {
    return Intl.message(
      'Support Bodistics',
      name: 'getStartedSupporterSectionTitle',
      desc: 'Title for the Supporter section in the get started tab.',
      args: [],
    );
  }

  /// `Get Started`
  String get getStartedTabTitle {
    return Intl.message(
      'Get Started',
      name: 'getStartedTabTitle',
      desc: 'title for the get started tab',
      args: [],
    );
  }

  /// `Create new patient file`
  String get getStartedViewCreateNewPatientFile {
    return Intl.message(
      'Create new patient file',
      name: 'getStartedViewCreateNewPatientFile',
      desc: 'Text button string to create a new patient file',
      args: [],
    );
  }

  /// `Links`
  String get getStartedViewLinks {
    return Intl.message(
      'Links',
      name: 'getStartedViewLinks',
      desc: 'Title for a section that displays a list of useful links',
      args: [],
    );
  }

  /// `No recent files...`
  String get getStartedViewNoRecentFiles {
    return Intl.message(
      'No recent files...',
      name: 'getStartedViewNoRecentFiles',
      desc: 'Text to show when there are not recent files to show',
      args: [],
    );
  }

  /// `Open existing file`
  String get getStartedViewOpenExistingFile {
    return Intl.message(
      'Open existing file',
      name: 'getStartedViewOpenExistingFile',
      desc: 'Text button string to open an existing file',
      args: [],
    );
  }

  /// `Recent`
  String get getStartedViewRecent {
    return Intl.message(
      'Recent',
      name: 'getStartedViewRecent',
      desc: 'Title for a section that displays a list of recently opened files',
      args: [],
    );
  }

  /// `Start`
  String get getStartedViewStart {
    return Intl.message(
      'Start',
      name: 'getStartedViewStart',
      desc:
          'Title for a section that helps user take quick actions to start using the app',
      args: [],
    );
  }

  /// `Terms of use`
  String get getStartedViewTermsOfUse {
    return Intl.message(
      'Terms of use',
      name: 'getStartedViewTermsOfUse',
      desc: 'Link to the terms of use of the app',
      args: [],
    );
  }

  /// `Get Started With Food Equivalents`
  String get getStartedWithFoodEquivalents {
    return Intl.message(
      'Get Started With Food Equivalents',
      name: 'getStartedWithFoodEquivalents',
      desc: 'Title that shoes up when you don\'t have any food equivalents',
      args: [],
    );
  }

  /// `You can use equivalent lists to group food items that have similar nutrient contents. \n Equivalents can be used in meal plans to give your clients a variety of food items to choose from that have the same impact on their meal plan.`
  String get getStartedWithFoodEquivalentsDescription {
    return Intl.message(
      'You can use equivalent lists to group food items that have similar nutrient contents. \n Equivalents can be used in meal plans to give your clients a variety of food items to choose from that have the same impact on their meal plan.',
      name: 'getStartedWithFoodEquivalentsDescription',
      desc: 'Brief explanation of how to use food equivalents',
      args: [],
    );
  }

  /// `Glucose`
  String get glucose {
    return Intl.message(
      'Glucose',
      name: 'glucose',
      desc: 'Glucose',
      args: [],
    );
  }

  /// `Glutamic acid`
  String get glutamicAcid {
    return Intl.message(
      'Glutamic acid',
      name: 'glutamicAcid',
      desc: 'Glutamic acid',
      args: [],
    );
  }

  /// `Glycine`
  String get glycine {
    return Intl.message(
      'Glycine',
      name: 'glycine',
      desc: 'Glycine',
      args: [],
    );
  }

  /// `Gram Weight`
  String get gramWeight {
    return Intl.message(
      'Gram Weight',
      name: 'gramWeight',
      desc: 'Field label for portion\'s gram weight',
      args: [],
    );
  }

  /// `help`
  String get help {
    return Intl.message(
      'help',
      name: 'help',
      desc: 'tooltip for help icon button',
      args: [],
    );
  }

  /// `Histidine`
  String get histidine {
    return Intl.message(
      'Histidine',
      name: 'histidine',
      desc: 'Histidine',
      args: [],
    );
  }

  /// `Hydroxyproline`
  String get hydroxyproline {
    return Intl.message(
      'Hydroxyproline',
      name: 'hydroxyproline',
      desc: 'Hydroxyproline',
      args: [],
    );
  }

  /// `Import`
  String get import {
    return Intl.message(
      'Import',
      name: 'import',
      desc: 'import',
      args: [],
    );
  }

  /// `Importing English food database`
  String get importingEnglishFoodDatabase {
    return Intl.message(
      'Importing English food database',
      name: 'importingEnglishFoodDatabase',
      desc: 'Text to indicate that we are loading the English food database',
      args: [],
    );
  }

  /// `Importing Spanish food database`
  String get importingSpanishFoodDatabase {
    return Intl.message(
      'Importing Spanish food database',
      name: 'importingSpanishFoodDatabase',
      desc: 'Text to indicate that we are loading the Spanish food database',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: 'Information',
      args: [],
    );
  }

  /// `Initializing food service`
  String get initializingFoodService {
    return Intl.message(
      'Initializing food service',
      name: 'initializingFoodService',
      desc: 'Text to indicate that we are initializing the food service',
      args: [],
    );
  }

  /// `Invalid file`
  String get invalidFile {
    return Intl.message(
      'Invalid file',
      name: 'invalidFile',
      desc: 'Title for the alert that pops up when you cannot open a file',
      args: [],
    );
  }

  /// `Invalid weight`
  String get invalidWeight {
    return Intl.message(
      'Invalid weight',
      name: 'invalidWeight',
      desc: 'Error message when a portion weight is invalid',
      args: [],
    );
  }

  /// `Iron, Fe`
  String get ironFe {
    return Intl.message(
      'Iron, Fe',
      name: 'ironFe',
      desc: 'Iron, Fe',
      args: [],
    );
  }

  /// `Isoleucine`
  String get isoleucine {
    return Intl.message(
      'Isoleucine',
      name: 'isoleucine',
      desc: 'Isoleucine',
      args: [],
    );
  }

  /// `Item does not exist`
  String get itemDoesNotExist {
    return Intl.message(
      'Item does not exist',
      name: 'itemDoesNotExist',
      desc: 'open',
      args: [],
    );
  }

  /// `Start typing to search items`
  String get itemSearchComponentStartTypingToSearch {
    return Intl.message(
      'Start typing to search items',
      name: 'itemSearchComponentStartTypingToSearch',
      desc:
          'String to show when there no search query in the item search component',
      args: [],
    );
  }

  /// `Item Synced`
  String get itemSynced {
    return Intl.message(
      'Item Synced',
      name: 'itemSynced',
      desc:
          'Text to indicate that a food item\'s information is synced with the database',
      args: [],
    );
  }

  /// `Keyboard shortcuts`
  String get keyboardShortcutsText {
    return Intl.message(
      'Keyboard shortcuts',
      name: 'keyboardShortcutsText',
      desc: 'Text for a keyboard shortcut section',
      args: [],
    );
  }

  /// `Lactose`
  String get lactose {
    return Intl.message(
      'Lactose',
      name: 'lactose',
      desc: 'Lactose',
      args: [],
    );
  }

  /// `Lamb, Veal, and Game Products`
  String get lambVealAndGameProducts {
    return Intl.message(
      'Lamb, Veal, and Game Products',
      name: 'lambVealAndGameProducts',
      desc: 'Lamb, Veal, and Game Products',
      args: [],
    );
  }

  /// `Legumes and Legume Products`
  String get legumesAndLegumeProducts {
    return Intl.message(
      'Legumes and Legume Products',
      name: 'legumesAndLegumeProducts',
      desc: 'Legumes and Legume Products',
      args: [],
    );
  }

  /// `Leucine`
  String get leucine {
    return Intl.message(
      'Leucine',
      name: 'leucine',
      desc: 'Leucine',
      args: [],
    );
  }

  /// `Link`
  String get linkButtonText {
    return Intl.message(
      'Link',
      name: 'linkButtonText',
      desc: 'text for a link button.',
      args: [],
    );
  }

  /// `Loading file service`
  String get loadingFileService {
    return Intl.message(
      'Loading file service',
      name: 'loadingFileService',
      desc: 'Text to indicate that we are loading file service',
      args: [],
    );
  }

  /// `Loading settings`
  String get loadingSettings {
    return Intl.message(
      'Loading settings',
      name: 'loadingSettings',
      desc: 'Text to indicate that we are loading settings',
      args: [],
    );
  }

  /// `Loading tab service`
  String get loadingTabService {
    return Intl.message(
      'Loading tab service',
      name: 'loadingTabService',
      desc: 'Text to indicate that we are loading tab service',
      args: [],
    );
  }

  /// `Lutein + zeaxanthin`
  String get luteinZeaxanthin {
    return Intl.message(
      'Lutein + zeaxanthin',
      name: 'luteinZeaxanthin',
      desc: 'Lutein + zeaxanthin',
      args: [],
    );
  }

  /// `Lycopene`
  String get lycopene {
    return Intl.message(
      'Lycopene',
      name: 'lycopene',
      desc: 'Lycopene',
      args: [],
    );
  }

  /// `Lysine`
  String get lysine {
    return Intl.message(
      'Lysine',
      name: 'lysine',
      desc: 'Lysine',
      args: [],
    );
  }

  /// `Macro Nutrient Distribution`
  String get macroNutrientDistribution {
    return Intl.message(
      'Macro Nutrient Distribution',
      name: 'macroNutrientDistribution',
      desc: 'Title for macro nutrient distribution pie chart.',
      args: [],
    );
  }

  /// `Macros & Food Groups`
  String get macrosAndGroups {
    return Intl.message(
      'Macros & Food Groups',
      name: 'macrosAndGroups',
      desc: 'Macros stats title',
      args: [],
    );
  }

  /// `Magnesium, Mg`
  String get magnesiumMg {
    return Intl.message(
      'Magnesium, Mg',
      name: 'magnesiumMg',
      desc: 'Magnesium, Mg',
      args: [],
    );
  }

  /// `Maltose`
  String get maltose {
    return Intl.message(
      'Maltose',
      name: 'maltose',
      desc: 'Maltose',
      args: [],
    );
  }

  /// `Manganese, Mn`
  String get manganeseMn {
    return Intl.message(
      'Manganese, Mn',
      name: 'manganeseMn',
      desc: 'Manganese, Mn',
      args: [],
    );
  }

  /// `Mark as current`
  String get markAsCurrent {
    return Intl.message(
      'Mark as current',
      name: 'markAsCurrent',
      desc: 'mark plan as current plan tooltip',
      args: [],
    );
  }

  /// `Meals`
  String get meals {
    return Intl.message(
      'Meals',
      name: 'meals',
      desc: 'meals text',
      args: [],
    );
  }

  /// `Meals, Entrees, and Side Dishes`
  String get mealsEntreesAndSideDishes {
    return Intl.message(
      'Meals, Entrees, and Side Dishes',
      name: 'mealsEntreesAndSideDishes',
      desc: 'Meals, Entrees, and Side Dishes',
      args: [],
    );
  }

  /// `Methionine`
  String get methionine {
    return Intl.message(
      'Methionine',
      name: 'methionine',
      desc: 'Methionine',
      args: [],
    );
  }

  /// `Micro Nutrients`
  String get microNutrients {
    return Intl.message(
      'Micro Nutrients',
      name: 'microNutrients',
      desc: 'micro nutrients',
      args: [],
    );
  }

  /// `Minerals`
  String get minerals {
    return Intl.message(
      'Minerals',
      name: 'minerals',
      desc: 'Minerals text',
      args: [],
    );
  }

  /// `Monday`
  String get monday {
    return Intl.message(
      'Monday',
      name: 'monday',
      desc: 'Monday: day of the week.',
      args: [],
    );
  }

  /// `MUFA 14:1`
  String get mufa141 {
    return Intl.message(
      'MUFA 14:1',
      name: 'mufa141',
      desc: 'MUFA 14:1',
      args: [],
    );
  }

  /// `MUFA 15:1`
  String get mufa151 {
    return Intl.message(
      'MUFA 15:1',
      name: 'mufa151',
      desc: 'MUFA 15:1',
      args: [],
    );
  }

  /// `MUFA 16:1`
  String get mufa161 {
    return Intl.message(
      'MUFA 16:1',
      name: 'mufa161',
      desc: 'MUFA 16:1',
      args: [],
    );
  }

  /// `MUFA 16:1 c`
  String get mufa161C {
    return Intl.message(
      'MUFA 16:1 c',
      name: 'mufa161C',
      desc: 'MUFA 16:1 c',
      args: [],
    );
  }

  /// `MUFA 17:1`
  String get mufa171 {
    return Intl.message(
      'MUFA 17:1',
      name: 'mufa171',
      desc: 'MUFA 17:1',
      args: [],
    );
  }

  /// `MUFA 18:1`
  String get mufa181 {
    return Intl.message(
      'MUFA 18:1',
      name: 'mufa181',
      desc: 'MUFA 18:1',
      args: [],
    );
  }

  /// `MUFA 18:1-11 t (18:1t n-7)`
  String get mufa18111T181tN7 {
    return Intl.message(
      'MUFA 18:1-11 t (18:1t n-7)',
      name: 'mufa18111T181tN7',
      desc: 'MUFA 18:1-11 t (18:1t n-7)',
      args: [],
    );
  }

  /// `MUFA 18:1 c`
  String get mufa181C {
    return Intl.message(
      'MUFA 18:1 c',
      name: 'mufa181C',
      desc: 'MUFA 18:1 c',
      args: [],
    );
  }

  /// `MUFA 20:1`
  String get mufa201 {
    return Intl.message(
      'MUFA 20:1',
      name: 'mufa201',
      desc: 'MUFA 20:1',
      args: [],
    );
  }

  /// `MUFA 22:1`
  String get mufa221 {
    return Intl.message(
      'MUFA 22:1',
      name: 'mufa221',
      desc: 'MUFA 22:1',
      args: [],
    );
  }

  /// `MUFA 22:1 c`
  String get mufa221C {
    return Intl.message(
      'MUFA 22:1 c',
      name: 'mufa221C',
      desc: 'MUFA 22:1 c',
      args: [],
    );
  }

  /// `MUFA 24:1 c`
  String get mufa241C {
    return Intl.message(
      'MUFA 24:1 c',
      name: 'mufa241C',
      desc: 'MUFA 24:1 c',
      args: [],
    );
  }

  /// `New Equivalence`
  String get newEquivalence {
    return Intl.message(
      'New Equivalence',
      name: 'newEquivalence',
      desc: 'new equivalence',
      args: [],
    );
  }

  /// `New Food portion`
  String get newFoodPortion {
    return Intl.message(
      'New Food portion',
      name: 'newFoodPortion',
      desc: 'Title for the new food portion dialog',
      args: [],
    );
  }

  /// `New Meal Plan`
  String get newMealPlan {
    return Intl.message(
      'New Meal Plan',
      name: 'newMealPlan',
      desc: 'title for an new plan document',
      args: [],
    );
  }

  /// `New Portion`
  String get newPortion {
    return Intl.message(
      'New Portion',
      name: 'newPortion',
      desc: 'New portions button text',
      args: [],
    );
  }

  /// `Niacin`
  String get niacin {
    return Intl.message(
      'Niacin',
      name: 'niacin',
      desc: 'Niacin',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: 'text for a no button.',
      args: [],
    );
  }

  /// `No Average Portion`
  String get noAveragePortion {
    return Intl.message(
      'No Average Portion',
      name: 'noAveragePortion',
      desc: 'no average portion',
      args: [],
    );
  }

  /// `No changes have been made`
  String get noChangesHaveBeenMade {
    return Intl.message(
      'No changes have been made',
      name: 'noChangesHaveBeenMade',
      desc:
          'Title for the dialog shown when no changes were made to meal plan.',
      args: [],
    );
  }

  /// `No food items matching: {query}`
  String noFoodItemsMatchingQuery(Object query) {
    return Intl.message(
      'No food items matching: $query',
      name: 'noFoodItemsMatchingQuery',
      desc:
          'String to show when there no search query in the item search component',
      args: [query],
    );
  }

  /// `No Items`
  String get noItems {
    return Intl.message(
      'No Items',
      name: 'noItems',
      desc: 'no items',
      args: [],
    );
  }

  /// `There are no items in this equivalence. Get started by adding an item!`
  String get noItemsInEquivalence {
    return Intl.message(
      'There are no items in this equivalence. Get started by adding an item!',
      name: 'noItemsInEquivalence',
      desc:
          'Brief text that shows up when there are no equivalences in the list',
      args: [],
    );
  }

  /// `Nut and Seed Products`
  String get nutAndSeedProducts {
    return Intl.message(
      'Nut and Seed Products',
      name: 'nutAndSeedProducts',
      desc: 'Nut and Seed Products',
      args: [],
    );
  }

  /// `OK`
  String get okButtonText {
    return Intl.message(
      'OK',
      name: 'okButtonText',
      desc: 'text for an OK button.',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: 'open',
      args: [],
    );
  }

  /// `You are closing an unsaved document. All data will be lost.`
  String get pageBarCloseDialogBodyOne {
    return Intl.message(
      'You are closing an unsaved document. All data will be lost.',
      name: 'pageBarCloseDialogBodyOne',
      desc: 'Body text for the close unsaved document dialog.',
      args: [],
    );
  }

  /// `Are you sure you want to close this document?`
  String get pageBarCloseDialogBodyTwo {
    return Intl.message(
      'Are you sure you want to close this document?',
      name: 'pageBarCloseDialogBodyTwo',
      desc: 'Body text for the close unsaved document dialog.',
      args: [],
    );
  }

  /// `Close`
  String get pageBarCloseDialogCloseButton {
    return Intl.message(
      'Close',
      name: 'pageBarCloseDialogCloseButton',
      desc:
          'Text for the close button in the close document confirmation dialog.',
      args: [],
    );
  }

  /// `Unsaved document`
  String get pageBarCloseDialogTitle {
    return Intl.message(
      'Unsaved document',
      name: 'pageBarCloseDialogTitle',
      desc: 'Title for the confirm close document dialog',
      args: [],
    );
  }

  /// `Pantothenic acid`
  String get pantothenicAcid {
    return Intl.message(
      'Pantothenic acid',
      name: 'pantothenicAcid',
      desc: 'Pantothenic acid',
      args: [],
    );
  }

  /// `Phenylalanine`
  String get phenylalanine {
    return Intl.message(
      'Phenylalanine',
      name: 'phenylalanine',
      desc: 'Phenylalanine',
      args: [],
    );
  }

  /// `Phosphorus, P`
  String get phosphorusP {
    return Intl.message(
      'Phosphorus, P',
      name: 'phosphorusP',
      desc: 'Phosphorus, P',
      args: [],
    );
  }

  /// `Physical Activity`
  String get physicalActivity {
    return Intl.message(
      'Physical Activity',
      name: 'physicalActivity',
      desc: 'Confined to bed physical activity',
      args: [],
    );
  }

  /// `average activity`
  String get physicalActivityAverageActivity {
    return Intl.message(
      'average activity',
      name: 'physicalActivityAverageActivity',
      desc: 'average physical activity',
      args: [],
    );
  }

  /// `confined to bed`
  String get physicalActivityConfinedToBed {
    return Intl.message(
      'confined to bed',
      name: 'physicalActivityConfinedToBed',
      desc: 'Confined to bed physical activity',
      args: [],
    );
  }

  /// `high activity`
  String get physicalActivityHighActivity {
    return Intl.message(
      'high activity',
      name: 'physicalActivityHighActivity',
      desc: 'high physical activity',
      args: [],
    );
  }

  /// `low activity`
  String get physicalActivityLowActivity {
    return Intl.message(
      'low activity',
      name: 'physicalActivityLowActivity',
      desc: 'low physical activity',
      args: [],
    );
  }

  /// `moderate activity`
  String get physicalActivityModerateActivity {
    return Intl.message(
      'moderate activity',
      name: 'physicalActivityModerateActivity',
      desc: 'moderate physical activity',
      args: [],
    );
  }

  /// `Phytosterols`
  String get phytosterols {
    return Intl.message(
      'Phytosterols',
      name: 'phytosterols',
      desc: 'Phytosterols',
      args: [],
    );
  }

  /// `Calorie Count`
  String get planEditorViewCalorieCount {
    return Intl.message(
      'Calorie Count',
      name: 'planEditorViewCalorieCount',
      desc: 'Title for the calorie count graph',
      args: [],
    );
  }

  /// `Copied plan link`
  String get planEditorViewCopiedPlanLink {
    return Intl.message(
      'Copied plan link',
      name: 'planEditorViewCopiedPlanLink',
      desc: 'Text for indicating the user a link has been copied',
      args: [],
    );
  }

  /// `Current Plan`
  String get planEditorViewCurrentPlanButton {
    return Intl.message(
      'Current Plan',
      name: 'planEditorViewCurrentPlanButton',
      desc:
          'Text for the button that activates the food plan as the current food plan',
      args: [],
    );
  }

  /// `Failed to create plan link`
  String get planEditorViewFailedToCreatePlanLink {
    return Intl.message(
      'Failed to create plan link',
      name: 'planEditorViewFailedToCreatePlanLink',
      desc: 'Text for indicating the user when a link has failed to be created',
      args: [],
    );
  }

  /// `Macro Nutrients`
  String get planEditorViewMacroNutrients {
    return Intl.message(
      'Macro Nutrients',
      name: 'planEditorViewMacroNutrients',
      desc: 'Title for the macro nutrient graph',
      args: [],
    );
  }

  /// `Micro Nutrients`
  String get planEditorViewMicroNutrients {
    return Intl.message(
      'Micro Nutrients',
      name: 'planEditorViewMicroNutrients',
      desc: 'Title for the micro nutrient graph',
      args: [],
    );
  }

  /// `Food plan has been exported and saved.`
  String get planEditorViewPlanHasBeenExported {
    return Intl.message(
      'Food plan has been exported and saved.',
      name: 'planEditorViewPlanHasBeenExported',
      desc:
          'Message that appears to let the user know that the plan has been exported and saved.',
      args: [],
    );
  }

  /// `Save Food Plan`
  String get planEditorViewSaveDialogTitle {
    return Intl.message(
      'Save Food Plan',
      name: 'planEditorViewSaveDialogTitle',
      desc: 'Title for the save food plan dialog',
      args: [],
    );
  }

  /// `Copy`
  String get planEditorViewShortcutCopy {
    return Intl.message(
      'Copy',
      name: 'planEditorViewShortcutCopy',
      desc: 'copy shortcut title',
      args: [],
    );
  }

  /// `Delete`
  String get planEditorViewShortcutDelete {
    return Intl.message(
      'Delete',
      name: 'planEditorViewShortcutDelete',
      desc: 'delete shortcut title',
      args: [],
    );
  }

  /// `Expand/shrink selection`
  String get planEditorViewShortcutExpandShrink {
    return Intl.message(
      'Expand/shrink selection',
      name: 'planEditorViewShortcutExpandShrink',
      desc: 'expand/shrink shortcut title',
      args: [],
    );
  }

  /// `Move to next/previous section`
  String get planEditorViewShortcutMoveNextPrevious {
    return Intl.message(
      'Move to next/previous section',
      name: 'planEditorViewShortcutMoveNextPrevious',
      desc: 'move next/previous shortcut title',
      args: [],
    );
  }

  /// `Move right/left`
  String get planEditorViewShortcutMoveRightLeft {
    return Intl.message(
      'Move right/left',
      name: 'planEditorViewShortcutMoveRightLeft',
      desc: 'move right/left shortcut title',
      args: [],
    );
  }

  /// `Paste`
  String get planEditorViewShortcutPaste {
    return Intl.message(
      'Paste',
      name: 'planEditorViewShortcutPaste',
      desc: 'paste shortcut title',
      args: [],
    );
  }

  /// `Plan Name`
  String get planName {
    return Intl.message(
      'Plan Name',
      name: 'planName',
      desc: 'Plan name field label.',
      args: [],
    );
  }

  /// `Send Food Plan`
  String get planShareDialogTitle {
    return Intl.message(
      'Send Food Plan',
      name: 'planShareDialogTitle',
      desc: 'Title for plan share dialog',
      args: [],
    );
  }

  /// `Please confirm update`
  String get pleaseConfirmUpdate {
    return Intl.message(
      'Please confirm update',
      name: 'pleaseConfirmUpdate',
      desc: 'Confirm update dialog title',
      args: [],
    );
  }

  /// `Please enter a portion name`
  String get pleaseEnterAPortionName {
    return Intl.message(
      'Please enter a portion name',
      name: 'pleaseEnterAPortionName',
      desc: 'Error message when a portion field is empty',
      args: [],
    );
  }

  /// `Pork Products`
  String get porkProducts {
    return Intl.message(
      'Pork Products',
      name: 'porkProducts',
      desc: 'Pork Products',
      args: [],
    );
  }

  /// `portion`
  String get portion {
    return Intl.message(
      'portion',
      name: 'portion',
      desc: 'portion',
      args: [],
    );
  }

  /// `Portion Name`
  String get portionName {
    return Intl.message(
      'Portion Name',
      name: 'portionName',
      desc: 'Field label for portion\'s name',
      args: [],
    );
  }

  /// `e.g: big cup`
  String get portionNameHint {
    return Intl.message(
      'e.g: big cup',
      name: 'portionNameHint',
      desc: 'Field hint for portion\'s name',
      args: [],
    );
  }

  /// `Portions`
  String get portions {
    return Intl.message(
      'Portions',
      name: 'portions',
      desc: 'Portions text',
      args: [],
    );
  }

  /// `Quantity`
  String get portionsModalQuantity {
    return Intl.message(
      'Quantity',
      name: 'portionsModalQuantity',
      desc: 'Title quantity number field',
      args: [],
    );
  }

  /// `Quantity: e.g "1.2"`
  String get portionsModalQuantityHint {
    return Intl.message(
      'Quantity: e.g "1.2"',
      name: 'portionsModalQuantityHint',
      desc: 'Hint for the quantity number field',
      args: [],
    );
  }

  /// `Potassium, K`
  String get potassiumK {
    return Intl.message(
      'Potassium, K',
      name: 'potassiumK',
      desc: 'Potassium, K',
      args: [],
    );
  }

  /// `Poultry Products`
  String get poultryProducts {
    return Intl.message(
      'Poultry Products',
      name: 'poultryProducts',
      desc: 'Poultry Products',
      args: [],
    );
  }

  /// `Privacy policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Proline`
  String get proline {
    return Intl.message(
      'Proline',
      name: 'proline',
      desc: 'Proline',
      args: [],
    );
  }

  /// `Protein`
  String get protein {
    return Intl.message(
      'Protein',
      name: 'protein',
      desc: 'Protein',
      args: [],
    );
  }

  /// `Proteins`
  String get proteins {
    return Intl.message(
      'Proteins',
      name: 'proteins',
      desc: 'Proteins text',
      args: [],
    );
  }

  /// `PUFA 18:2`
  String get pufa182 {
    return Intl.message(
      'PUFA 18:2',
      name: 'pufa182',
      desc: 'PUFA 18:2',
      args: [],
    );
  }

  /// `PUFA 18:2 CLAs`
  String get pufa182Clas {
    return Intl.message(
      'PUFA 18:2 CLAs',
      name: 'pufa182Clas',
      desc: 'PUFA 18:2 CLAs',
      args: [],
    );
  }

  /// `PUFA 18:2 i`
  String get pufa182I {
    return Intl.message(
      'PUFA 18:2 i',
      name: 'pufa182I',
      desc: 'PUFA 18:2 i',
      args: [],
    );
  }

  /// `PUFA 18:2 n-6 c,c`
  String get pufa182N6Cc {
    return Intl.message(
      'PUFA 18:2 n-6 c,c',
      name: 'pufa182N6Cc',
      desc: 'PUFA 18:2 n-6 c,c',
      args: [],
    );
  }

  /// `PUFA 18:3`
  String get pufa183 {
    return Intl.message(
      'PUFA 18:3',
      name: 'pufa183',
      desc: 'PUFA 18:3',
      args: [],
    );
  }

  /// `PUFA 18:3i`
  String get pufa183i {
    return Intl.message(
      'PUFA 18:3i',
      name: 'pufa183i',
      desc: 'PUFA 18:3i',
      args: [],
    );
  }

  /// `PUFA 18:3 n-3 c,c,c (ALA)`
  String get pufa183N3CccAla {
    return Intl.message(
      'PUFA 18:3 n-3 c,c,c (ALA)',
      name: 'pufa183N3CccAla',
      desc: 'PUFA 18:3 n-3 c,c,c (ALA)',
      args: [],
    );
  }

  /// `PUFA 18:3 n-6 c,c,c`
  String get pufa183N6Ccc {
    return Intl.message(
      'PUFA 18:3 n-6 c,c,c',
      name: 'pufa183N6Ccc',
      desc: 'PUFA 18:3 n-6 c,c,c',
      args: [],
    );
  }

  /// `PUFA 18:4`
  String get pufa184 {
    return Intl.message(
      'PUFA 18:4',
      name: 'pufa184',
      desc: 'PUFA 18:4',
      args: [],
    );
  }

  /// `PUFA 20:2 n-6 c,c`
  String get pufa202N6Cc {
    return Intl.message(
      'PUFA 20:2 n-6 c,c',
      name: 'pufa202N6Cc',
      desc: 'PUFA 20:2 n-6 c,c',
      args: [],
    );
  }

  /// `PUFA 20:3`
  String get pufa203 {
    return Intl.message(
      'PUFA 20:3',
      name: 'pufa203',
      desc: 'PUFA 20:3',
      args: [],
    );
  }

  /// `PUFA 20:3 n-3`
  String get pufa203N3 {
    return Intl.message(
      'PUFA 20:3 n-3',
      name: 'pufa203N3',
      desc: 'PUFA 20:3 n-3',
      args: [],
    );
  }

  /// `PUFA 20:3 n-6`
  String get pufa203N6 {
    return Intl.message(
      'PUFA 20:3 n-6',
      name: 'pufa203N6',
      desc: 'PUFA 20:3 n-6',
      args: [],
    );
  }

  /// `PUFA 20:4`
  String get pufa204 {
    return Intl.message(
      'PUFA 20:4',
      name: 'pufa204',
      desc: 'PUFA 20:4',
      args: [],
    );
  }

  /// `PUFA 21:5`
  String get pufa215 {
    return Intl.message(
      'PUFA 21:5',
      name: 'pufa215',
      desc: 'PUFA 21:5',
      args: [],
    );
  }

  /// `PUFA 22:4`
  String get pufa224 {
    return Intl.message(
      'PUFA 22:4',
      name: 'pufa224',
      desc: 'PUFA 22:4',
      args: [],
    );
  }

  /// `PUFA 22:5 n-3 (DPA)`
  String get pufa225N3Dpa {
    return Intl.message(
      'PUFA 22:5 n-3 (DPA)',
      name: 'pufa225N3Dpa',
      desc: 'PUFA 22:5 n-3 (DPA)',
      args: [],
    );
  }

  /// `PUFA 22:6 n-3 (DHA)`
  String get pufa226N3Dha {
    return Intl.message(
      'PUFA 22:6 n-3 (DHA)',
      name: 'pufa226N3Dha',
      desc: 'PUFA 22:6 n-3 (DHA)',
      args: [],
    );
  }

  /// `PUFA 2:4 n-6`
  String get pufa24N6 {
    return Intl.message(
      'PUFA 2:4 n-6',
      name: 'pufa24N6',
      desc: 'PUFA 2:4 n-6',
      args: [],
    );
  }

  /// `PUFA 2:5 n-3 (EPA)`
  String get pufa25N3Epa {
    return Intl.message(
      'PUFA 2:5 n-3 (EPA)',
      name: 'pufa25N3Epa',
      desc: 'PUFA 2:5 n-3 (EPA)',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: 'quantity',
      args: [],
    );
  }

  /// `RDA`
  String get rda {
    return Intl.message(
      'RDA',
      name: 'rda',
      desc: 'RDA',
      args: [],
    );
  }

  /// `Read-only link`
  String get readOnlyLink {
    return Intl.message(
      'Read-only link',
      name: 'readOnlyLink',
      desc: 'Read only link label',
      args: [],
    );
  }

  /// `Remove Item`
  String get removeItem {
    return Intl.message(
      'Remove Item',
      name: 'removeItem',
      desc: 'Remove food item',
      args: [],
    );
  }

  /// `Restaurant Foods`
  String get restaurantFoods {
    return Intl.message(
      'Restaurant Foods',
      name: 'restaurantFoods',
      desc: 'Restaurant Foods',
      args: [],
    );
  }

  /// `Retinol`
  String get retinol {
    return Intl.message(
      'Retinol',
      name: 'retinol',
      desc: 'Retinol',
      args: [],
    );
  }

  /// `Riboflavin`
  String get riboflavin {
    return Intl.message(
      'Riboflavin',
      name: 'riboflavin',
      desc: 'Riboflavin',
      args: [],
    );
  }

  /// `Saturday`
  String get saturday {
    return Intl.message(
      'Saturday',
      name: 'saturday',
      desc: 'Saturday: day of the week.',
      args: [],
    );
  }

  /// `Sausages and Luncheon Meats`
  String get sausagesAndLuncheonMeats {
    return Intl.message(
      'Sausages and Luncheon Meats',
      name: 'sausagesAndLuncheonMeats',
      desc: 'Sausages and Luncheon Meats',
      args: [],
    );
  }

  /// `Save`
  String get saveButtonText {
    return Intl.message(
      'Save',
      name: 'saveButtonText',
      desc: 'text for an save button.',
      args: [],
    );
  }

  /// `Save Food Plan`
  String get saveDialogTitle {
    return Intl.message(
      'Save Food Plan',
      name: 'saveDialogTitle',
      desc: 'Title for the save plan dialog',
      args: [],
    );
  }

  /// `Search food`
  String get searchFieldHint {
    return Intl.message(
      'Search food',
      name: 'searchFieldHint',
      desc: 'hint for the food search field.',
      args: [],
    );
  }

  /// `Select`
  String get selectButtonText {
    return Intl.message(
      'Select',
      name: 'selectButtonText',
      desc: 'text for a select button.',
      args: [],
    );
  }

  /// `Selecting default database`
  String get selectingDefaultDatabase {
    return Intl.message(
      'Selecting default database',
      name: 'selectingDefaultDatabase',
      desc: 'Text to indicate that we are selecting the default database',
      args: [],
    );
  }

  /// `Select Item`
  String get selectItemButtonText {
    return Intl.message(
      'Select Item',
      name: 'selectItemButtonText',
      desc: 'text for a select item button.',
      args: [],
    );
  }

  /// `Selenium, Se`
  String get seleniumSe {
    return Intl.message(
      'Selenium, Se',
      name: 'seleniumSe',
      desc: 'Selenium, Se',
      args: [],
    );
  }

  /// `Send`
  String get sendButtonText {
    return Intl.message(
      'Send',
      name: 'sendButtonText',
      desc: 'text for a send button.',
      args: [],
    );
  }

  /// `{attemptCount, plural, zero{No attempts} one{{attemptCount} attempt} other{{attemptCount} attempts}}`
  String sendPlanJobCardBodyAttempts(num attemptCount) {
    return Intl.plural(
      attemptCount,
      zero: 'No attempts',
      one: '$attemptCount attempt',
      other: '$attemptCount attempts',
      name: 'sendPlanJobCardBodyAttempts',
      desc:
          'Body with the number of attempts that have been made to send the plan',
      args: [attemptCount],
    );
  }

  /// `retry`
  String get sendPlanJobCardBodyRetry {
    return Intl.message(
      'retry',
      name: 'sendPlanJobCardBodyRetry',
      desc: 'text for the retry button in the body of the card',
      args: [],
    );
  }

  /// `Plan was sent successfully`
  String get sendPlanJobCardBodySuccess {
    return Intl.message(
      'Plan was sent successfully',
      name: 'sendPlanJobCardBodySuccess',
      desc: 'Body text to display when plan has been sent',
      args: [],
    );
  }

  /// `to: {email}`
  String sendPlanJobCardSubtitleTo(Object email) {
    return Intl.message(
      'to: $email',
      name: 'sendPlanJobCardSubtitleTo',
      desc: 'Subtitle with the recipient of the plan',
      args: [email],
    );
  }

  /// `{planName} (not sent)`
  String sendPlanJobCardTitleNotSent(Object planName) {
    return Intl.message(
      '$planName (not sent)',
      name: 'sendPlanJobCardTitleNotSent',
      desc: 'title for the send plan job card when the plan failed to be sent',
      args: [planName],
    );
  }

  /// `{planName} (sending)`
  String sendPlanJobCardTitleSending(Object planName) {
    return Intl.message(
      '$planName (sending)',
      name: 'sendPlanJobCardTitleSending',
      desc: 'title for the send plan job card when the plan is being sent',
      args: [planName],
    );
  }

  /// `{planName}`
  String sendPlanJobCardTitleSent(Object planName) {
    return Intl.message(
      '$planName',
      name: 'sendPlanJobCardTitleSent',
      desc: 'title for the send plan job card when the plan has been sent',
      args: [planName],
    );
  }

  /// `Serine`
  String get serine {
    return Intl.message(
      'Serine',
      name: 'serine',
      desc: 'Serine',
      args: [],
    );
  }

  /// `Default Units`
  String get settingsViewDefaultUnits {
    return Intl.message(
      'Default Units',
      name: 'settingsViewDefaultUnits',
      desc: 'Text for the default units dropdown menu',
      args: [],
    );
  }

  /// `Food Databases`
  String get settingsViewFoodDatabases {
    return Intl.message(
      'Food Databases',
      name: 'settingsViewFoodDatabases',
      desc: 'Title for the food databases section in the settings page',
      args: [],
    );
  }

  /// `Import Database`
  String get settingsViewImportDatabase {
    return Intl.message(
      'Import Database',
      name: 'settingsViewImportDatabase',
      desc: 'Text for the import database button',
      args: [],
    );
  }

  /// `Settings`
  String get settingsViewSettings {
    return Intl.message(
      'Settings',
      name: 'settingsViewSettings',
      desc: 'Title for the settings page',
      args: [],
    );
  }

  /// `SFA 10:0`
  String get sfa100 {
    return Intl.message(
      'SFA 10:0',
      name: 'sfa100',
      desc: 'SFA 10:0',
      args: [],
    );
  }

  /// `SFA 12:0`
  String get sfa120 {
    return Intl.message(
      'SFA 12:0',
      name: 'sfa120',
      desc: 'SFA 12:0',
      args: [],
    );
  }

  /// `SFA 13:0`
  String get sfa130 {
    return Intl.message(
      'SFA 13:0',
      name: 'sfa130',
      desc: 'SFA 13:0',
      args: [],
    );
  }

  /// `SFA 14:0`
  String get sfa140 {
    return Intl.message(
      'SFA 14:0',
      name: 'sfa140',
      desc: 'SFA 14:0',
      args: [],
    );
  }

  /// `SFA 15:0`
  String get sfa150 {
    return Intl.message(
      'SFA 15:0',
      name: 'sfa150',
      desc: 'SFA 15:0',
      args: [],
    );
  }

  /// `SFA 16:0`
  String get sfa160 {
    return Intl.message(
      'SFA 16:0',
      name: 'sfa160',
      desc: 'SFA 16:0',
      args: [],
    );
  }

  /// `SFA 17:0`
  String get sfa170 {
    return Intl.message(
      'SFA 17:0',
      name: 'sfa170',
      desc: 'SFA 17:0',
      args: [],
    );
  }

  /// `SFA 18:0`
  String get sfa180 {
    return Intl.message(
      'SFA 18:0',
      name: 'sfa180',
      desc: 'SFA 18:0',
      args: [],
    );
  }

  /// `SFA 20:0`
  String get sfa200 {
    return Intl.message(
      'SFA 20:0',
      name: 'sfa200',
      desc: 'SFA 20:0',
      args: [],
    );
  }

  /// `SFA 22:0`
  String get sfa220 {
    return Intl.message(
      'SFA 22:0',
      name: 'sfa220',
      desc: 'SFA 22:0',
      args: [],
    );
  }

  /// `SFA 24:0`
  String get sfa240 {
    return Intl.message(
      'SFA 24:0',
      name: 'sfa240',
      desc: 'SFA 24:0',
      args: [],
    );
  }

  /// `SFA 4:0`
  String get sfa40 {
    return Intl.message(
      'SFA 4:0',
      name: 'sfa40',
      desc: 'SFA 4:0',
      args: [],
    );
  }

  /// `SFA 6:0`
  String get sfa60 {
    return Intl.message(
      'SFA 6:0',
      name: 'sfa60',
      desc: 'SFA 6:0',
      args: [],
    );
  }

  /// `SFA 8:0`
  String get sfa80 {
    return Intl.message(
      'SFA 8:0',
      name: 'sfa80',
      desc: 'SFA 8:0',
      args: [],
    );
  }

  /// `Share meal plan`
  String get shareMealPlan {
    return Intl.message(
      'Share meal plan',
      name: 'shareMealPlan',
      desc: 'Share meal plan dialog title',
      args: [],
    );
  }

  /// `Give your clients access to this meal plan. The meal plan will be automatically sync everytime you save the file`
  String get shareMealPlanMessage {
    return Intl.message(
      'Give your clients access to this meal plan. The meal plan will be automatically sync everytime you save the file',
      name: 'shareMealPlanMessage',
      desc: 'Share meal plan dialog title',
      args: [],
    );
  }

  /// `Slide the avocado to confirm`
  String get slideAvocadoToConfirm {
    return Intl.message(
      'Slide the avocado to confirm',
      name: 'slideAvocadoToConfirm',
      desc:
          'Text to show in the confirmation slider used when deleting or editing important data.',
      args: [],
    );
  }

  /// `Snacks`
  String get snacks {
    return Intl.message(
      'Snacks',
      name: 'snacks',
      desc: 'Snacks',
      args: [],
    );
  }

  /// `Sodium, Na`
  String get sodiumNa {
    return Intl.message(
      'Sodium, Na',
      name: 'sodiumNa',
      desc: 'Sodium, Na',
      args: [],
    );
  }

  /// `Soups, Sauces, and Gravies`
  String get soupsSaucesAndGravies {
    return Intl.message(
      'Soups, Sauces, and Gravies',
      name: 'soupsSaucesAndGravies',
      desc: 'Soups, Sauces, and Gravies',
      args: [],
    );
  }

  /// `Spices and Herbs`
  String get spicesAndHerbs {
    return Intl.message(
      'Spices and Herbs',
      name: 'spicesAndHerbs',
      desc: 'Spices and Herbs',
      args: [],
    );
  }

  /// `Starch`
  String get starch {
    return Intl.message(
      'Starch',
      name: 'starch',
      desc: 'Starch',
      args: [],
    );
  }

  /// `Stigmasterol`
  String get stigmasterol {
    return Intl.message(
      'Stigmasterol',
      name: 'stigmasterol',
      desc: 'Stigmasterol',
      args: [],
    );
  }

  /// `Sucrose`
  String get sucrose {
    return Intl.message(
      'Sucrose',
      name: 'sucrose',
      desc: 'Sucrose',
      args: [],
    );
  }

  /// `Sugars, total including NLEA`
  String get sugarsTotalIncludingNlea {
    return Intl.message(
      'Sugars, total including NLEA',
      name: 'sugarsTotalIncludingNlea',
      desc: 'Sugars, total including NLEA',
      args: [],
    );
  }

  /// `Sunday`
  String get sunday {
    return Intl.message(
      'Sunday',
      name: 'sunday',
      desc: 'Sunday: day of the week.',
      args: [],
    );
  }

  /// `Sweets`
  String get sweets {
    return Intl.message(
      'Sweets',
      name: 'sweets',
      desc: 'Sweets',
      args: [],
    );
  }

  /// `Sync`
  String get syncButtonText {
    return Intl.message(
      'Sync',
      name: 'syncButtonText',
      desc: 'text for an sync button.',
      args: [],
    );
  }

  /// `TFA 16:1 t`
  String get tfa161T {
    return Intl.message(
      'TFA 16:1 t',
      name: 'tfa161T',
      desc: 'TFA 16:1 t',
      args: [],
    );
  }

  /// `TFA 18:1 t`
  String get tfa181T {
    return Intl.message(
      'TFA 18:1 t',
      name: 'tfa181T',
      desc: 'TFA 18:1 t',
      args: [],
    );
  }

  /// `TFA 18:2 t not further defined`
  String get tfa182TNotFurtherDefined {
    return Intl.message(
      'TFA 18:2 t not further defined',
      name: 'tfa182TNotFurtherDefined',
      desc: 'TFA 18:2 t not further defined',
      args: [],
    );
  }

  /// `TFA 18:2 t,t`
  String get tfa182Tt {
    return Intl.message(
      'TFA 18:2 t,t',
      name: 'tfa182Tt',
      desc: 'TFA 18:2 t,t',
      args: [],
    );
  }

  /// `TFA 22:1 t`
  String get tfa221T {
    return Intl.message(
      'TFA 22:1 t',
      name: 'tfa221T',
      desc: 'TFA 22:1 t',
      args: [],
    );
  }

  /// `The average food portion is computed from the items in the equivalence.`
  String get theAverageFoodPortionIsComputed {
    return Intl.message(
      'The average food portion is computed from the items in the equivalence.',
      name: 'theAverageFoodPortionIsComputed',
      desc: 'Description that explains what an average portion is.',
      args: [],
    );
  }

  /// `The food item in your meal plan now matches the food item in your database and will now be marked as synced.`
  String get theFoodItemNowMatchesTheDatabase {
    return Intl.message(
      'The food item in your meal plan now matches the food item in your database and will now be marked as synced.',
      name: 'theFoodItemNowMatchesTheDatabase',
      desc:
          'Message of dialog shown when an item in the meal plan has been updated',
      args: [],
    );
  }

  /// `The food plan will be deleted from your document's profile and will no longer be accessible. This action cannot be undone.`
  String get theFoodPlanWillBeDeleted {
    return Intl.message(
      'The food plan will be deleted from your document\'s profile and will no longer be accessible. This action cannot be undone.',
      name: 'theFoodPlanWillBeDeleted',
      desc:
          'Message for the confirmation dialog shown when trying to delete meal plan.',
      args: [],
    );
  }

  /// `The item will still be marked as not synced. You can always come back and sync it later.`
  String get theItemWillStillBeMarkedAsNotSynced {
    return Intl.message(
      'The item will still be marked as not synced. You can always come back and sync it later.',
      name: 'theItemWillStillBeMarkedAsNotSynced',
      desc:
          'Message when the item in a meal will still be marked as out-of-sync.',
      args: [],
    );
  }

  /// `The item you are trying to open does not exist in the database.`
  String get theItemYouOpenningDoesNotExist {
    return Intl.message(
      'The item you are trying to open does not exist in the database.',
      name: 'theItemYouOpenningDoesNotExist',
      desc:
          'Description of the alert modal that shows up when the item you are trying to open does not exist in the database',
      args: [],
    );
  }

  /// `Theobromine`
  String get theobromine {
    return Intl.message(
      'Theobromine',
      name: 'theobromine',
      desc: 'Theobromine',
      args: [],
    );
  }

  /// `Thiamin`
  String get thiamin {
    return Intl.message(
      'Thiamin',
      name: 'thiamin',
      desc: 'Thiamin',
      args: [],
    );
  }

  /// `Threonine`
  String get threonine {
    return Intl.message(
      'Threonine',
      name: 'threonine',
      desc: 'Threonine',
      args: [],
    );
  }

  /// `Thursday`
  String get thursday {
    return Intl.message(
      'Thursday',
      name: 'thursday',
      desc: 'Thursday: day of the week.',
      args: [],
    );
  }

  /// `Tocopherol, beta`
  String get tocopherolBeta {
    return Intl.message(
      'Tocopherol, beta',
      name: 'tocopherolBeta',
      desc: 'Tocopherol, beta',
      args: [],
    );
  }

  /// `Tocopherol, delta`
  String get tocopherolDelta {
    return Intl.message(
      'Tocopherol, delta',
      name: 'tocopherolDelta',
      desc: 'Tocopherol, delta',
      args: [],
    );
  }

  /// `Tocopherol, gamma`
  String get tocopherolGamma {
    return Intl.message(
      'Tocopherol, gamma',
      name: 'tocopherolGamma',
      desc: 'Tocopherol, gamma',
      args: [],
    );
  }

  /// `Tocotrienol, alpha`
  String get tocotrienolAlpha {
    return Intl.message(
      'Tocotrienol, alpha',
      name: 'tocotrienolAlpha',
      desc: 'Tocotrienol, alpha',
      args: [],
    );
  }

  /// `Tocotrienol, beta`
  String get tocotrienolBeta {
    return Intl.message(
      'Tocotrienol, beta',
      name: 'tocotrienolBeta',
      desc: 'Tocotrienol, beta',
      args: [],
    );
  }

  /// `Tocotrienol, delta`
  String get tocotrienolDelta {
    return Intl.message(
      'Tocotrienol, delta',
      name: 'tocotrienolDelta',
      desc: 'Tocotrienol, delta',
      args: [],
    );
  }

  /// `Tocotrienol, gamma`
  String get tocotrienolGamma {
    return Intl.message(
      'Tocotrienol, gamma',
      name: 'tocotrienolGamma',
      desc: 'Tocotrienol, gamma',
      args: [],
    );
  }

  /// `Total lipid (fat)`
  String get totalLipidFat {
    return Intl.message(
      'Total lipid (fat)',
      name: 'totalLipidFat',
      desc: 'Total lipid (fat)',
      args: [],
    );
  }

  /// `Tryptophan`
  String get tryptophan {
    return Intl.message(
      'Tryptophan',
      name: 'tryptophan',
      desc: 'Tryptophan',
      args: [],
    );
  }

  /// `Tuesday`
  String get tuesday {
    return Intl.message(
      'Tuesday',
      name: 'tuesday',
      desc: 'Tuesday: day of the week.',
      args: [],
    );
  }

  /// `Tyrosine`
  String get tyrosine {
    return Intl.message(
      'Tyrosine',
      name: 'tyrosine',
      desc: 'Tyrosine',
      args: [],
    );
  }

  /// `imperial`
  String get unitSystemImperial {
    return Intl.message(
      'imperial',
      name: 'unitSystemImperial',
      desc: 'The name of the imperial unit system',
      args: [],
    );
  }

  /// `metric`
  String get unitSystemMetric {
    return Intl.message(
      'metric',
      name: 'unitSystemMetric',
      desc: 'The name of the metric unit system',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: 'text for a update button.',
      args: [],
    );
  }

  /// `We can update the food item in your database to match the food item in the food plan. This will update the name, portions, and nutrients.`
  String get updateDatabaseWithMealPlanItemMessageOne {
    return Intl.message(
      'We can update the food item in your database to match the food item in the food plan. This will update the name, portions, and nutrients.',
      name: 'updateDatabaseWithMealPlanItemMessageOne',
      desc: 'Update database with meal plan item dialog message',
      args: [],
    );
  }

  /// `Note: You can always select "no" do this later.`
  String get updateDatabaseWithMealPlanItemMessageThree {
    return Intl.message(
      'Note: You can always select "no" do this later.',
      name: 'updateDatabaseWithMealPlanItemMessageThree',
      desc: 'Update database with meal plan item dialog message',
      args: [],
    );
  }

  /// `If you select "no" then the item in the food plan will remain marked as "out of sync".`
  String get updateDatabaseWithMealPlanItemMessageTwo {
    return Intl.message(
      'If you select "no" then the item in the food plan will remain marked as "out of sync".',
      name: 'updateDatabaseWithMealPlanItemMessageTwo',
      desc: 'Update database with meal plan item dialog message',
      args: [],
    );
  }

  /// `Update your database with the meal plan's food item?`
  String get updateDatabaseWithMealPlanItemTitle {
    return Intl.message(
      'Update your database with the meal plan\'s food item?',
      name: 'updateDatabaseWithMealPlanItemTitle',
      desc: 'Update database with meal plan item dialog title',
      args: [],
    );
  }

  /// `Actual Height`
  String get userProfileActualHeight {
    return Intl.message(
      'Actual Height',
      name: 'userProfileActualHeight',
      desc: 'Text that labels the actual height value',
      args: [],
    );
  }

  /// `Actual Waist`
  String get userProfileActualWaist {
    return Intl.message(
      'Actual Waist',
      name: 'userProfileActualWaist',
      desc: 'Text that labels the actual waist value in the edit waist dialog',
      args: [],
    );
  }

  /// `Actual Weight`
  String get userProfileActualWeight {
    return Intl.message(
      'Actual Weight',
      name: 'userProfileActualWeight',
      desc: 'Title for the weight measurement',
      args: [],
    );
  }

  /// `ADD METRIC`
  String get userProfileAddMetricButton {
    return Intl.message(
      'ADD METRIC',
      name: 'userProfileAddMetricButton',
      desc: 'Text for the button to add a new entry into the stats table',
      args: [],
    );
  }

  /// `BMI`
  String get userProfileBMI {
    return Intl.message(
      'BMI',
      name: 'userProfileBMI',
      desc: 'Body Mass Index abbreviation letters',
      args: [],
    );
  }

  /// `Body Fat %`
  String get userProfileBodyFat {
    return Intl.message(
      'Body Fat %',
      name: 'userProfileBodyFat',
      desc: 'Title for the body fat measurement',
      args: [],
    );
  }

  /// `Contact Information`
  String get userProfileContactInformation {
    return Intl.message(
      'Contact Information',
      name: 'userProfileContactInformation',
      desc: 'Title for the contact information section',
      args: [],
    );
  }

  /// `Email`
  String get userProfileContactInformationEmail {
    return Intl.message(
      'Email',
      name: 'userProfileContactInformationEmail',
      desc: 'Title for the email field',
      args: [],
    );
  }

  /// `Phone Number`
  String get userProfileContactInformationPhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'userProfileContactInformationPhoneNumber',
      desc: 'Title for the phone number field',
      args: [],
    );
  }

  /// `Current Diet Plan`
  String get userProfileCurrentDietPlan {
    return Intl.message(
      'Current Diet Plan',
      name: 'userProfileCurrentDietPlan',
      desc: 'Title for the current diet plan for a user profile',
      args: [],
    );
  }

  /// `Current Meal Plan`
  String get userProfileCurrentMealPlan {
    return Intl.message(
      'Current Meal Plan',
      name: 'userProfileCurrentMealPlan',
      desc: 'Title for the current meal plans for a user profile',
      args: [],
    );
  }

  /// `Date of Birth`
  String get userProfileDateOfBirth {
    return Intl.message(
      'Date of Birth',
      name: 'userProfileDateOfBirth',
      desc: 'Title for the date of birth field',
      args: [],
    );
  }

  /// `Diet Plans`
  String get userProfileDietPlans {
    return Intl.message(
      'Diet Plans',
      name: 'userProfileDietPlans',
      desc: 'Title for the list of diet plans in a user profile',
      args: [],
    );
  }

  /// `No assigned plan`
  String get userProfileEmptyCurrentDietPlan {
    return Intl.message(
      'No assigned plan',
      name: 'userProfileEmptyCurrentDietPlan',
      desc: 'Text to show when there is no diet plan assigned',
      args: [],
    );
  }

  /// `No assigned plans`
  String get userProfileEmptyCurrentMealPlan {
    return Intl.message(
      'No assigned plans',
      name: 'userProfileEmptyCurrentMealPlan',
      desc: 'Text to show when there is no meal plans assigned',
      args: [],
    );
  }

  /// `Get started by adding metrics!`
  String get userProfileEmptyStats {
    return Intl.message(
      'Get started by adding metrics!',
      name: 'userProfileEmptyStats',
      desc: 'Text to show when there is no stats data',
      args: [],
    );
  }

  /// `Food plan name`
  String get userProfileFoodPlanName {
    return Intl.message(
      'Food plan name',
      name: 'userProfileFoodPlanName',
      desc: 'Field title for the food plan name',
      args: [],
    );
  }

  /// `plan name`
  String get userProfileFoodPlanNameHint {
    return Intl.message(
      'plan name',
      name: 'userProfileFoodPlanNameHint',
      desc: 'Field hint for the food plan name',
      args: [],
    );
  }

  /// `Height`
  String get userProfileHeight {
    return Intl.message(
      'Height',
      name: 'userProfileHeight',
      desc: 'Title for the height measurement',
      args: [],
    );
  }

  /// `Introduce new height`
  String get userProfileIntroduceNewHeight {
    return Intl.message(
      'Introduce new height',
      name: 'userProfileIntroduceNewHeight',
      desc: 'Field label for the edit height dialog',
      args: [],
    );
  }

  /// `Introduce new waist measurement`
  String get userProfileIntroduceNewWaist {
    return Intl.message(
      'Introduce new waist measurement',
      name: 'userProfileIntroduceNewWaist',
      desc: 'label for the edit waist dialog',
      args: [],
    );
  }

  /// `Introduce new weight`
  String get userProfileIntroduceNewWeight {
    return Intl.message(
      'Introduce new weight',
      name: 'userProfileIntroduceNewWeight',
      desc: 'label for the field that edits the actual weight',
      args: [],
    );
  }

  /// `Meal Plans`
  String get userProfileMealPlans {
    return Intl.message(
      'Meal Plans',
      name: 'userProfileMealPlans',
      desc: 'Title for the list of meal plans in a user profile',
      args: [],
    );
  }

  /// `Patient's name`
  String get userProfilePatientName {
    return Intl.message(
      'Patient\'s name',
      name: 'userProfilePatientName',
      desc: 'hint text for the client\'s name',
      args: [],
    );
  }

  /// `Phone Number`
  String get userProfilePhoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'userProfilePhoneNumber',
      desc: 'Phone number field title',
      args: [],
    );
  }

  /// `Body Fat %`
  String get userProfileRecordsBodyFatColumn {
    return Intl.message(
      'Body Fat %',
      name: 'userProfileRecordsBodyFatColumn',
      desc: 'Text for the body fat column in the stats table',
      args: [],
    );
  }

  /// `Chest`
  String get userProfileRecordsChestColumn {
    return Intl.message(
      'Chest',
      name: 'userProfileRecordsChestColumn',
      desc: 'Text for the chest column in the stats table',
      args: [],
    );
  }

  /// `Date`
  String get userProfileRecordsDateColumn {
    return Intl.message(
      'Date',
      name: 'userProfileRecordsDateColumn',
      desc: 'Text for the date column in the stats table',
      args: [],
    );
  }

  /// `Left Arm`
  String get userProfileRecordsLeftArmColumn {
    return Intl.message(
      'Left Arm',
      name: 'userProfileRecordsLeftArmColumn',
      desc: 'Text for the left arm column in the stats table',
      args: [],
    );
  }

  /// `Left Leg`
  String get userProfileRecordsLeftLegColumn {
    return Intl.message(
      'Left Leg',
      name: 'userProfileRecordsLeftLegColumn',
      desc: 'Text for the left leg column in the stats table',
      args: [],
    );
  }

  /// `Right Arm`
  String get userProfileRecordsRightArmColumn {
    return Intl.message(
      'Right Arm',
      name: 'userProfileRecordsRightArmColumn',
      desc: 'Text for the right arm column in the stats table',
      args: [],
    );
  }

  /// `Right Leg`
  String get userProfileRecordsRightLegColumn {
    return Intl.message(
      'Right Leg',
      name: 'userProfileRecordsRightLegColumn',
      desc: 'Text for the right leg column in the stats table',
      args: [],
    );
  }

  /// `Waist`
  String get userProfileRecordsWaistColumn {
    return Intl.message(
      'Waist',
      name: 'userProfileRecordsWaistColumn',
      desc: 'Text for the waist column in the stats table',
      args: [],
    );
  }

  /// `Weight`
  String get userProfileRecordsWeightColumn {
    return Intl.message(
      'Weight',
      name: 'userProfileRecordsWeightColumn',
      desc: 'Text for the weight column in the stats table',
      args: [],
    );
  }

  /// `Stats Data`
  String get userProfileStatsData {
    return Intl.message(
      'Stats Data',
      name: 'userProfileStatsData',
      desc: 'Title for the user profile data table',
      args: [],
    );
  }

  /// `Waist`
  String get userProfileWaist {
    return Intl.message(
      'Waist',
      name: 'userProfileWaist',
      desc: 'Title for the waist measurement',
      args: [],
    );
  }

  /// `Weight`
  String get userProfileWeight {
    return Intl.message(
      'Weight',
      name: 'userProfileWeight',
      desc: 'Title for the weight measurement',
      args: [],
    );
  }

  /// `Valine`
  String get valine {
    return Intl.message(
      'Valine',
      name: 'valine',
      desc: 'Valine',
      args: [],
    );
  }

  /// `Vegetables and Vegetable Products`
  String get vegetablesAndVegetableProducts {
    return Intl.message(
      'Vegetables and Vegetable Products',
      name: 'vegetablesAndVegetableProducts',
      desc: 'Vegetables and Vegetable Products',
      args: [],
    );
  }

  /// `Vitamin A, IU`
  String get vitaminAIu {
    return Intl.message(
      'Vitamin A, IU',
      name: 'vitaminAIu',
      desc: 'Vitamin A, IU',
      args: [],
    );
  }

  /// `Vitamin A, RAE`
  String get vitaminARae {
    return Intl.message(
      'Vitamin A, RAE',
      name: 'vitaminARae',
      desc: 'Vitamin A, RAE',
      args: [],
    );
  }

  /// `Vitamin B-12`
  String get vitaminB12 {
    return Intl.message(
      'Vitamin B-12',
      name: 'vitaminB12',
      desc: 'Vitamin B-12',
      args: [],
    );
  }

  /// `Vitamin B-12, added`
  String get vitaminB12Added {
    return Intl.message(
      'Vitamin B-12, added',
      name: 'vitaminB12Added',
      desc: 'Vitamin B-12, added',
      args: [],
    );
  }

  /// `Vitamin B-6`
  String get vitaminB6 {
    return Intl.message(
      'Vitamin B-6',
      name: 'vitaminB6',
      desc: 'Vitamin B-6',
      args: [],
    );
  }

  /// `Vitamin C, total ascorbic acid`
  String get vitaminCTotalAscorbicAcid {
    return Intl.message(
      'Vitamin C, total ascorbic acid',
      name: 'vitaminCTotalAscorbicAcid',
      desc: 'Vitamin C, total ascorbic acid',
      args: [],
    );
  }

  /// `Vitamin D2 (ergocalciferol)`
  String get vitaminD2Ergocalciferol {
    return Intl.message(
      'Vitamin D2 (ergocalciferol)',
      name: 'vitaminD2Ergocalciferol',
      desc: 'Vitamin D2 (ergocalciferol)',
      args: [],
    );
  }

  /// `Vitamin D3 (cholecalciferol)`
  String get vitaminD3Cholecalciferol {
    return Intl.message(
      'Vitamin D3 (cholecalciferol)',
      name: 'vitaminD3Cholecalciferol',
      desc: 'Vitamin D3 (cholecalciferol)',
      args: [],
    );
  }

  /// `Vitamin D (D2 + D3)`
  String get vitaminDD2D3 {
    return Intl.message(
      'Vitamin D (D2 + D3)',
      name: 'vitaminDD2D3',
      desc: 'Vitamin D (D2 + D3)',
      args: [],
    );
  }

  /// `Vitamin D (D2 + D3), International Units`
  String get vitaminDD2D3InternationalUnits {
    return Intl.message(
      'Vitamin D (D2 + D3), International Units',
      name: 'vitaminDD2D3InternationalUnits',
      desc: 'Vitamin D (D2 + D3), International Units',
      args: [],
    );
  }

  /// `Vitamin E, added`
  String get vitaminEAdded {
    return Intl.message(
      'Vitamin E, added',
      name: 'vitaminEAdded',
      desc: 'Vitamin E, added',
      args: [],
    );
  }

  /// `Vitamin E (alpha-tocopherol)`
  String get vitaminEAlphatocopherol {
    return Intl.message(
      'Vitamin E (alpha-tocopherol)',
      name: 'vitaminEAlphatocopherol',
      desc: 'Vitamin E (alpha-tocopherol)',
      args: [],
    );
  }

  /// `Vitamin K (Dihydrophylloquinone)`
  String get vitaminKDihydrophylloquinone {
    return Intl.message(
      'Vitamin K (Dihydrophylloquinone)',
      name: 'vitaminKDihydrophylloquinone',
      desc: 'Vitamin K (Dihydrophylloquinone)',
      args: [],
    );
  }

  /// `Vitamin K (Menaquinone-4)`
  String get vitaminKMenaquinone4 {
    return Intl.message(
      'Vitamin K (Menaquinone-4)',
      name: 'vitaminKMenaquinone4',
      desc: 'Vitamin K (Menaquinone-4)',
      args: [],
    );
  }

  /// `Vitamin K (phylloquinone)`
  String get vitaminKPhylloquinone {
    return Intl.message(
      'Vitamin K (phylloquinone)',
      name: 'vitaminKPhylloquinone',
      desc: 'Vitamin K (phylloquinone)',
      args: [],
    );
  }

  /// `Vitamins`
  String get vitamins {
    return Intl.message(
      'Vitamins',
      name: 'vitamins',
      desc: 'Vitamins text',
      args: [],
    );
  }

  /// `Water`
  String get water {
    return Intl.message(
      'Water',
      name: 'water',
      desc: 'Water',
      args: [],
    );
  }

  /// `Wednesday`
  String get wednesday {
    return Intl.message(
      'Wednesday',
      name: 'wednesday',
      desc: 'Wednesday: day of the week.',
      args: [],
    );
  }

  /// `We don't want your data to get lost!`
  String get weDontWantYourDataToGetLost {
    return Intl.message(
      'We don\'t want your data to get lost!',
      name: 'weDontWantYourDataToGetLost',
      desc: 'Title for the dialog shown when a food item in conflict.',
      args: [],
    );
  }

  /// `We have updated your database!`
  String get weHaveUpdatedYourDatabase {
    return Intl.message(
      'We have updated your database!',
      name: 'weHaveUpdatedYourDatabase',
      desc: 'database update confirmation dialog title',
      args: [],
    );
  }

  /// `We have updated your meal plan!`
  String get weHaveUpdatedYourMealPlan {
    return Intl.message(
      'We have updated your meal plan!',
      name: 'weHaveUpdatedYourMealPlan',
      desc:
          'Title of dialog shown when an item in the meal plan has been updated',
      args: [],
    );
  }

  /// `We will keep using a different version of this item on your meal plan.`
  String get weWillKeepUsingADifferentVersion {
    return Intl.message(
      'We will keep using a different version of this item on your meal plan.',
      name: 'weWillKeepUsingADifferentVersion',
      desc:
          'Message for the dialog shown when no changes were made to meal plan.',
      args: [],
    );
  }

  /// `We will update the existing references to this food item in your meal plan with your selection.`
  String get weWillUpdateThisFoodItemInMealPlan {
    return Intl.message(
      'We will update the existing references to this food item in your meal plan with your selection.',
      name: 'weWillUpdateThisFoodItemInMealPlan',
      desc:
          'Message for the confirmation dialog when we are about to update a food item in meal plan.',
      args: [],
    );
  }

  /// `Which version of this food item should we use for this plan?`
  String get whichVersionOfThisFoodShouldWeUse {
    return Intl.message(
      'Which version of this food item should we use for this plan?',
      name: 'whichVersionOfThisFoodShouldWeUse',
      desc: 'Message for the dialog shown when a food item in conflict.',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: 'text for a yes button.',
      args: [],
    );
  }

  /// `You are about to delete the {portion} portion, do you want to continue?`
  String youAreAboutToDeleteFoodPortion(Object portion) {
    return Intl.message(
      'You are about to delete the $portion portion, do you want to continue?',
      name: 'youAreAboutToDeleteFoodPortion',
      desc: 'Message for the delete food portion dialog',
      args: [portion],
    );
  }

  /// `Your database will be updated with the food item in the food plan. Once you confirm your database will be updated.`
  String get yourDatabaseWillBeUpdateWithFoodPlanItem {
    return Intl.message(
      'Your database will be updated with the food item in the food plan. Once you confirm your database will be updated.',
      name: 'yourDatabaseWillBeUpdateWithFoodPlanItem',
      desc: 'Confirm update dialog message',
      args: [],
    );
  }

  /// `Your food item in your meal plan will be marked as synced.`
  String get yourFoodItemWillBeMarkedAsSynced {
    return Intl.message(
      'Your food item in your meal plan will be marked as synced.',
      name: 'yourFoodItemWillBeMarkedAsSynced',
      desc: 'Food item will be marked as synced text',
      args: [],
    );
  }

  /// `Zinc, Zn`
  String get zincZn {
    return Intl.message(
      'Zinc, Zn',
      name: 'zincZn',
      desc: 'Zinc, Zn',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'messages'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
