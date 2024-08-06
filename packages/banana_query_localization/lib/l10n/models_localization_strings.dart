import 'package:intl/intl.dart';

class ModelBodisticsLocalization {
  /// ------------------ ENUMS ----------------------- ///

  // ------------ unit_system.dart ----------- //
  String unitSystemMetric() => Intl.message(
      'metric',
      name: 'unitSystemMetric',
      args: [],
      desc: 'The name of the metric unit system');

  String unitSystemImperial() => Intl.message(
      'imperial',
      name: 'unitSystemImperial',
      args: [],
      desc: 'The name of the imperial unit system');

  // ------------ gender.dart ----------- //
  String gender() => Intl.message(
      'Gender',
      name: 'gender',
      args: [],
      desc: 'Confined to bed physical activity');

  String genderMale() => Intl.message(
      'male',
      name: 'genderMale',
      args: [],
      desc: 'The name for the male gender enum');

  String genderFemale() => Intl.message(
      'female',
      name: 'genderFemale',
      args: [],
      desc: 'The name of female gender enum');

  // ------------ physical_activity.dart ----------- //

  String physicalActivity() => Intl.message(
      'Physical Activity',
      name: 'physicalActivity',
      args: [],
      desc: 'Confined to bed physical activity');

  String physicalActivityConfinedToBed() => Intl.message(
      'confined to bed',
      name: 'physicalActivityConfinedToBed',
      args: [],
      desc: 'Confined to bed physical activity');

  String physicalActivityLowActivity() => Intl.message(
      'low activity',
      name: 'physicalActivityLowActivity',
      args: [],
      desc: 'low physical activity');

  String physicalActivityAverageActivity() => Intl.message(
      'average activity',
      name: 'physicalActivityAverageActivity',
      args: [],
      desc: 'average physical activity');

  String physicalActivityModerateActivity() => Intl.message(
      'moderate activity',
      name: 'physicalActivityModerateActivity',
      args: [],
      desc: 'moderate physical activity');

  String physicalActivityHighActivity() => Intl.message(
      'high activity',
      name: 'physicalActivityHighActivity',
      args: [],
      desc: 'high physical activity');

  /// ------------------ MODELS ----------------------- ///
  ///
  // ------------ FOOD RELATED ------------------------ //
  String portion() => Intl.message(
      'portion',
      name: 'portion',
      args: [],
      desc: 'portion');

  // ------------ client_document_tab.dart ----------- //

  String clientDocumentTabUntitledDocument() => Intl.message(
      'Untitled Document',
      name: 'clientDocumentTabUntitledDocument',
      args: [],
      desc: 'title for an unsaved client document');

  String newMealPlan() => Intl.message(
      'New Meal Plan',
      name: 'newMealPlan',
      args: [],
      desc: 'title for an new plan document');

  // ------------ app_settings_tab.dart ----------- //

  String appSettingsTabTitle() => Intl.message(
      'App Settings',
      name: 'appSettingsTabTitle',
      args: [],
      desc: 'title for the app settings tab');

  // ------------ get_started_tab.dart ----------- //

  String getStartedTabTitle() => Intl.message(
      'Get Started',
      name: 'getStartedTabTitle',
      args: [],
      desc: 'title for the get started tab');

  // ------------ send_plan_job_card.dart ----------- //

  String sendPlanJobCardTitleSending(planName) => Intl.message(
      '$planName (sending)',
      name: 'sendPlanJobCardTitleSending',
      args: [planName],
      desc: 'title for the send plans job card when the plans is being sent');

  String sendPlanJobCardTitleSent(planName) => Intl.message(
      '$planName',
      name: 'sendPlanJobCardTitleSent',
      args: [planName],
      desc: 'title for the send plans job card when the plans has been sent');

  String sendPlanJobCardTitleNotSent(planName) => Intl.message(
      '$planName (not sent)',
      name: 'sendPlanJobCardTitleNotSent',
      args: [planName],
      desc: 'title for the send plans job card when the plans failed to be sent');

  String sendPlanJobCardBodySuccess() => Intl.message(
      'Plan was sent successfully',
      name: 'sendPlanJobCardBodySuccess',
      args: [],
      desc: 'Body text to display when plans has been sent');

  String sendPlanJobCardBodyAttempts(attemptCount) => Intl.plural(
      attemptCount,
      zero: "No attempts",
      one: '$attemptCount attempt',
      many: '$attemptCount attempts',
      other: '$attemptCount attempts',
      name: 'sendPlanJobCardBodyAttempts',
      args: [attemptCount],
      desc: 'Body with the number of attempts that have been made to send the plans');

  String sendPlanJobCardBodyRetry() => Intl.message(
      'retry',
      name: 'sendPlanJobCardBodyRetry',
      args: [],
      desc: 'text for the retry button in the body of the card');

  String sendPlanJobCardSubtitleTo(email) => Intl.message(
      'to: $email',
      name: 'sendPlanJobCardSubtitleTo',
      args: [email],
      desc: 'Subtitle with the recipient of the plans');


}