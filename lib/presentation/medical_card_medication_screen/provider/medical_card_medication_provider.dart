import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/medical_card_medication_screen/models/medical_card_medication_model.dart';

/// A provider class for the MedicalCardMedicationScreen.
///
/// This provider manages the state of the MedicalCardMedicationScreen, including the
/// current medicalCardMedicationModelObj
class MedicalCardMedicationProvider extends ChangeNotifier {
  TextEditingController thumbsupController = TextEditingController();

  TextEditingController thumbsupController1 = TextEditingController();

  MedicalCardMedicationModel medicalCardMedicationModelObj =
      MedicalCardMedicationModel();

  @override
  void dispose() {
    super.dispose();
    thumbsupController.dispose();
    thumbsupController1.dispose();
  }
}
