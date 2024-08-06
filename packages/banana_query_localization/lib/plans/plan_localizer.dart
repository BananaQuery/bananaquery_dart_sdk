import 'package:flutter/material.dart';

import '../generated/l10n.dart';

class PlanLocalizer {
  static localizeDay(final String dayString, final BuildContext context) {
    switch(dayString.toLowerCase()) {
      case 'monday': {
        return S.of(context).monday;
      }
      case 'tuesday': {
        return S.of(context).tuesday;
      }
      case 'wednesday': {
        return S.of(context).wednesday;
      }
      case 'thursday': {
        return S.of(context).thursday;
      }
      case 'friday': {
        return S.of(context).friday;
      }
      case 'saturday': {
        return S.of(context).saturday;
      }
      case 'sunday': {
        return S.of(context).sunday;
      }
    }
    return dayString;
  }

  static localizeSection(final String sectionString, final BuildContext context) {
    switch(sectionString.toLowerCase()) {
      case 'breakfast': {
        return S.of(context).foodPlanComponentBreakfast;
      }
      case 'snack': {
        return S.of(context).foodPlanComponentSnack;
      }
      case 'lunch': {
        return S.of(context).foodPlanComponentLunch;
      }
      case 'dinner': {
        return S.of(context).foodPlanComponentDinner;
      }
      return sectionString;
    }
  }
}