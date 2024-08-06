// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static String m0(planPrice) => "Continuar (${planPrice}/Mes)";

  static String m1(planPrice) => "${planPrice}/Mes";

  static String m2(filename) => "No se pudó abrir el archivo \"${filename}\".";

  static String m4(attemptCount) =>
      "${Intl.plural(attemptCount, zero: '', one: '${attemptCount} intento', other: '')}";

  static String m5(email) => "para: ${email}";

  static String m6(planName) => "${planName} (no enviado)";

  static String m7(planName) => "${planName} (enviando)";

  static String m8(planName) => "{Nombre del plan}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "acceptButtonText": MessageLookupByLibrary.simpleMessage("ACEPTAR"),
        "addButtonText": MessageLookupByLibrary.simpleMessage("Agregar"),
        "appSettingsTabTitle":
            MessageLookupByLibrary.simpleMessage("Ajustes de Aplicacion"),
        "becomeASupporterContinueButton": m0,
        "becomeASupporterPriceRate": m1,
        "becomeASupporterSubtitle": MessageLookupByLibrary.simpleMessage(
            "¡Tus contribuciones ayudarán a Bodistics a crecer!"),
        "becomeASupporterTierOneName":
            MessageLookupByLibrary.simpleMessage("Seguidor"),
        "becomeASupporterTierOnePointOne":
            MessageLookupByLibrary.simpleMessage("Te gusta el proyecto"),
        "becomeASupporterTierOnePointThree":
            MessageLookupByLibrary.simpleMessage(
                "Pero no estás listo para usar Bodistics"),
        "becomeASupporterTierOnePointTwo": MessageLookupByLibrary.simpleMessage(
            "Te gustaría ver a Bodistics tener éxito"),
        "becomeASupporterTierThreeName":
            MessageLookupByLibrary.simpleMessage("Representante"),
        "becomeASupporterTierThreePointOne":
            MessageLookupByLibrary.simpleMessage(
                "Quieres participar en la comunidad Bodistics"),
        "becomeASupporterTierThreePointThree": MessageLookupByLibrary.simpleMessage(
            "Te gustaria estar en contacto directo con los desarrolladores para ayudar a mejorar Bodistics"),
        "becomeASupporterTierThreePointTwo":
            MessageLookupByLibrary.simpleMessage(
                "Quieres obtener las ultimas actualizaciones antes que todos"),
        "becomeASupporterTierTwoName":
            MessageLookupByLibrary.simpleMessage("Creyente"),
        "becomeASupporterTierTwoPointOne": MessageLookupByLibrary.simpleMessage(
            "Crees que este proyecto se convertirá en tu principal herramienta de trabajo"),
        "becomeASupporterTierTwoPointThree": MessageLookupByLibrary.simpleMessage(
            "Crees en la vision de Bodistics y te gustaria ser parte de ella"),
        "becomeASupporterTierTwoPointTwo": MessageLookupByLibrary.simpleMessage(
            "Crees que Bodistics podría hacerte la vida más fácil"),
        "becomeASupporterTitle": MessageLookupByLibrary.simpleMessage(
            "Conviértete en un patrocinador"),
        "cancelButtonText": MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cannotOpenFile": m2,
        "carb": MessageLookupByLibrary.simpleMessage("Carb"),
        "clientDocumentTabUntitledDocument":
            MessageLookupByLibrary.simpleMessage("Documento sin titulo"),
        "deleteButtonText": MessageLookupByLibrary.simpleMessage("Borrar"),
        "deleteDialogDefaultMessage": MessageLookupByLibrary.simpleMessage(
            "Está a punto de eliminar un recurso, ¿está seguro de que quieres continuar?"),
        "deleteDialogDefaultTitle":
            MessageLookupByLibrary.simpleMessage("¿Está seguro?"),
        "downloadButtonText": MessageLookupByLibrary.simpleMessage("Descargar"),
        "emailFieldHint": MessageLookupByLibrary.simpleMessage(
            "introduce un correo electrónico"),
        "energy": MessageLookupByLibrary.simpleMessage("Energía"),
        "exitButtonText": MessageLookupByLibrary.simpleMessage("Salida"),
        "fat": MessageLookupByLibrary.simpleMessage("Grasa"),
        "fiber": MessageLookupByLibrary.simpleMessage("Fibra"),
        "foodPlanComponentAdd": MessageLookupByLibrary.simpleMessage("Agregar"),
        "foodPlanComponentAddItem":
            MessageLookupByLibrary.simpleMessage("Agregar alimento"),
        "foodPlanComponentBreakfast":
            MessageLookupByLibrary.simpleMessage("Desayuno"),
        "foodPlanComponentDinner": MessageLookupByLibrary.simpleMessage("Cena"),
        "foodPlanComponentLunch":
            MessageLookupByLibrary.simpleMessage("Almuerzo"),
        "foodPlanComponentSnack":
            MessageLookupByLibrary.simpleMessage("Bocadillo"),
        "foodPlanComponentTotals":
            MessageLookupByLibrary.simpleMessage("Totales"),
        "friday": MessageLookupByLibrary.simpleMessage("Viernes"),
        "gender": MessageLookupByLibrary.simpleMessage("Género"),
        "genderFemale": MessageLookupByLibrary.simpleMessage("femenino"),
        "genderMale": MessageLookupByLibrary.simpleMessage("masculino"),
        "getStartedBecomeASupporterButton":
            MessageLookupByLibrary.simpleMessage(
                "Conviértete en un patrocinador"),
        "getStartedDocumentShortcutsTitle":
            MessageLookupByLibrary.simpleMessage(
                "Accesos directos para documentos"),
        "getStartedGlobalShortcutsTitle":
            MessageLookupByLibrary.simpleMessage("Accesos directos globales"),
        "getStartedNewDocumentShortcutMacOS":
            MessageLookupByLibrary.simpleMessage("(⌘ + n) Nuevo documento"),
        "getStartedSaveDocumentShortcut":
            MessageLookupByLibrary.simpleMessage("(⌘ + s) Guardar documento"),
        "getStartedSupporterSectionTitle":
            MessageLookupByLibrary.simpleMessage("Ayuda a Bodístics"),
        "getStartedTabTitle": MessageLookupByLibrary.simpleMessage("Empezar"),
        "getStartedViewCreateNewPatientFile":
            MessageLookupByLibrary.simpleMessage(
                "Crear nuevo archivo de paciente"),
        "getStartedViewLinks": MessageLookupByLibrary.simpleMessage("Enlaces"),
        "getStartedViewNoRecentFiles": MessageLookupByLibrary.simpleMessage(
            "No hay archivos recientes..."),
        "getStartedViewOpenExistingFile":
            MessageLookupByLibrary.simpleMessage("Abrir archivo existente"),
        "getStartedViewRecent":
            MessageLookupByLibrary.simpleMessage("Reciente"),
        "getStartedViewStart": MessageLookupByLibrary.simpleMessage("comienzo"),
        "getStartedViewTermsOfUse":
            MessageLookupByLibrary.simpleMessage("Términos de Uso"),
        "importingEnglishFoodDatabase": MessageLookupByLibrary.simpleMessage(
            "Importando la base de datos en ingles"),
        "importingSpanishFoodDatabase": MessageLookupByLibrary.simpleMessage(
            "Importando la base de datos en español"),
        "initializingFoodService": MessageLookupByLibrary.simpleMessage(
            "Inicializando el servicio de comida"),
        "invalidFile": MessageLookupByLibrary.simpleMessage("Archivo invalido"),
        "itemSearchComponentStartTypingToSearch":
            MessageLookupByLibrary.simpleMessage(
                "Comience a escribir para buscar elementos"),
        "keyboardShortcutsText":
            MessageLookupByLibrary.simpleMessage("Atajos de teclado"),
        "linkButtonText": MessageLookupByLibrary.simpleMessage("Enlace"),
        "loadingFileService": MessageLookupByLibrary.simpleMessage(
            "Cargando el servicio de archivos"),
        "loadingSettings":
            MessageLookupByLibrary.simpleMessage("Cargando cofiguraciones"),
        "loadingTabService": MessageLookupByLibrary.simpleMessage(
            "Cargando el servicio de pestañas"),
        "monday": MessageLookupByLibrary.simpleMessage("Lunes"),
        "okButtonText": MessageLookupByLibrary.simpleMessage("OK"),
        "pageBarCloseDialogBodyOne": MessageLookupByLibrary.simpleMessage(
            "Está cerrando un documento no guardado. Todos los datos se perderán."),
        "pageBarCloseDialogBodyTwo": MessageLookupByLibrary.simpleMessage(
            "¿Está seguro de que desea cerrar este documento?"),
        "pageBarCloseDialogCloseButton":
            MessageLookupByLibrary.simpleMessage("Cerrar"),
        "pageBarCloseDialogTitle":
            MessageLookupByLibrary.simpleMessage("Documento no guardado"),
        "physicalActivity":
            MessageLookupByLibrary.simpleMessage("Actividad física"),
        "physicalActivityAverageActivity":
            MessageLookupByLibrary.simpleMessage("actividad promedio"),
        "physicalActivityConfinedToBed":
            MessageLookupByLibrary.simpleMessage("confinado a la cama"),
        "physicalActivityHighActivity":
            MessageLookupByLibrary.simpleMessage("alta actividad"),
        "physicalActivityLowActivity":
            MessageLookupByLibrary.simpleMessage("baja actividad"),
        "physicalActivityModerateActivity":
            MessageLookupByLibrary.simpleMessage("actividad moderada"),
        "planEditorViewCalorieCount":
            MessageLookupByLibrary.simpleMessage("Cuenta calorica"),
        "planEditorViewCopiedPlanLink":
            MessageLookupByLibrary.simpleMessage("Enlace del plan copiado"),
        "planEditorViewCurrentPlanButton":
            MessageLookupByLibrary.simpleMessage("Plan activo"),
        "planEditorViewFailedToCreatePlanLink":
            MessageLookupByLibrary.simpleMessage(
                "No se pudo crear el vínculo del plan"),
        "planEditorViewMacroNutrients":
            MessageLookupByLibrary.simpleMessage("Macro nutrientes"),
        "planEditorViewPlanHasBeenExported":
            MessageLookupByLibrary.simpleMessage(
                "El plan de alimentos ha sido exportado y guardado."),
        "planEditorViewSaveDialogTitle":
            MessageLookupByLibrary.simpleMessage("Guarda plan alimenticio"),
        "planEditorViewShortcutCopy":
            MessageLookupByLibrary.simpleMessage("Copiar"),
        "planEditorViewShortcutDelete":
            MessageLookupByLibrary.simpleMessage("Borrar"),
        "planEditorViewShortcutExpandShrink":
            MessageLookupByLibrary.simpleMessage("Ampliar/reducir selección"),
        "planEditorViewShortcutMoveNextPrevious":
            MessageLookupByLibrary.simpleMessage(
                "Mover a seccion de arriba/abajo"),
        "planEditorViewShortcutMoveRightLeft":
            MessageLookupByLibrary.simpleMessage(
                "Mover a la derecha/izquierda"),
        "planEditorViewShortcutPaste":
            MessageLookupByLibrary.simpleMessage("Pegar"),
        "planShareDialogTitle":
            MessageLookupByLibrary.simpleMessage("Enviar plan alimenticio"),
        "portionsModalQuantity":
            MessageLookupByLibrary.simpleMessage("Cantidad"),
        "portionsModalQuantityHint": MessageLookupByLibrary.simpleMessage(
            "Cantidad: por ejemplo, \"1.2\""),
        "privacyPolicy":
            MessageLookupByLibrary.simpleMessage("Póliza de privacidad"),
        "protein": MessageLookupByLibrary.simpleMessage("Proteína"),
        "saturday": MessageLookupByLibrary.simpleMessage("Sabado"),
        "saveButtonText": MessageLookupByLibrary.simpleMessage("Guardar"),
        "saveDialogTitle":
            MessageLookupByLibrary.simpleMessage("Guardar plan de alimentos"),
        "searchFieldHint":
            MessageLookupByLibrary.simpleMessage("Buscar comida"),
        "selectButtonText": MessageLookupByLibrary.simpleMessage("Seleccione"),
        "selectingDefaultDatabase": MessageLookupByLibrary.simpleMessage(
            "Seleccionando la base de datos"),
        "sendButtonText": MessageLookupByLibrary.simpleMessage("Mandar"),
        "sendPlanJobCardBodyAttempts": m4,
        "sendPlanJobCardBodyRetry":
            MessageLookupByLibrary.simpleMessage("reintentar"),
        "sendPlanJobCardBodySuccess": MessageLookupByLibrary.simpleMessage(
            "El plan fue enviado con éxito"),
        "sendPlanJobCardSubtitleTo": m5,
        "sendPlanJobCardTitleNotSent": m6,
        "sendPlanJobCardTitleSending": m7,
        "sendPlanJobCardTitleSent": m8,
        "settingsViewDefaultUnits":
            MessageLookupByLibrary.simpleMessage("Unidades por defecto"),
        "settingsViewFoodDatabases":
            MessageLookupByLibrary.simpleMessage("Bases de datos de alimentos"),
        "settingsViewImportDatabase":
            MessageLookupByLibrary.simpleMessage("Importar base de datos"),
        "settingsViewSettings": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "sunday": MessageLookupByLibrary.simpleMessage("Domingo"),
        "thursday": MessageLookupByLibrary.simpleMessage("Jueves"),
        "tuesday": MessageLookupByLibrary.simpleMessage("Martes"),
        "unitSystemImperial": MessageLookupByLibrary.simpleMessage("imperial"),
        "unitSystemMetric": MessageLookupByLibrary.simpleMessage("métrico"),
        "userProfileActualHeight":
            MessageLookupByLibrary.simpleMessage("Altura actual"),
        "userProfileActualWaist":
            MessageLookupByLibrary.simpleMessage("Cintura actual"),
        "userProfileActualWeight":
            MessageLookupByLibrary.simpleMessage("Peso actual"),
        "userProfileAddMetricButton":
            MessageLookupByLibrary.simpleMessage("AÑADIR MÉTRICA"),
        "userProfileBMI": MessageLookupByLibrary.simpleMessage("IMC"),
        "userProfileBodyFat":
            MessageLookupByLibrary.simpleMessage("% Grasa corporal"),
        "userProfileContactInformation":
            MessageLookupByLibrary.simpleMessage("Información del contacto"),
        "userProfileContactInformationEmail":
            MessageLookupByLibrary.simpleMessage("Correo electrónico"),
        "userProfileContactInformationPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de teléfono"),
        "userProfileCurrentMealPlan":
            MessageLookupByLibrary.simpleMessage("Plan alimenticio actual"),
        "userProfileDateOfBirth":
            MessageLookupByLibrary.simpleMessage("Fecha de nacimiento"),
        "userProfileEmptyCurrentMealPlan":
            MessageLookupByLibrary.simpleMessage("Sin plan asignado"),
        "userProfileEmptyStats": MessageLookupByLibrary.simpleMessage(
            "¡Comience agregando métricas!"),
        "userProfileFoodPlanName": MessageLookupByLibrary.simpleMessage(
            "Nombre del plan de alimentos"),
        "userProfileFoodPlanNameHint":
            MessageLookupByLibrary.simpleMessage("Nombre del plan"),
        "userProfileHeight": MessageLookupByLibrary.simpleMessage("Altura"),
        "userProfileIntroduceNewHeight":
            MessageLookupByLibrary.simpleMessage("Introducir nueva altura"),
        "userProfileIntroduceNewWaist": MessageLookupByLibrary.simpleMessage(
            "Introducir nueva medida de cintura"),
        "userProfileIntroduceNewWeight":
            MessageLookupByLibrary.simpleMessage("Introducir nuevo peso"),
        "userProfileMealPlans":
            MessageLookupByLibrary.simpleMessage("Planes alimenticios"),
        "userProfilePatientName":
            MessageLookupByLibrary.simpleMessage("Nombre del paciente"),
        "userProfilePhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de teléfono"),
        "userProfileRecordsChestColumn":
            MessageLookupByLibrary.simpleMessage("Pecho"),
        "userProfileRecordsDateColumn":
            MessageLookupByLibrary.simpleMessage("Fecha"),
        "userProfileRecordsLeftArmColumn":
            MessageLookupByLibrary.simpleMessage("Brazo izquierdo"),
        "userProfileRecordsLeftLegColumn":
            MessageLookupByLibrary.simpleMessage("Pierna izquierda"),
        "userProfileRecordsRightArmColumn":
            MessageLookupByLibrary.simpleMessage("Brazo derecho"),
        "userProfileRecordsRightLegColumn":
            MessageLookupByLibrary.simpleMessage("Pierna derecha"),
        "userProfileRecordsWaistColumn":
            MessageLookupByLibrary.simpleMessage("Cintura"),
        "userProfileRecordsWeightColumn":
            MessageLookupByLibrary.simpleMessage("Peso"),
        "userProfileStatsData":
            MessageLookupByLibrary.simpleMessage("Datos de estadísticas"),
        "userProfileWaist": MessageLookupByLibrary.simpleMessage("Cintura"),
        "userProfileWeight": MessageLookupByLibrary.simpleMessage("Peso"),
        "wednesday": MessageLookupByLibrary.simpleMessage("Miercoles")
      };
}
