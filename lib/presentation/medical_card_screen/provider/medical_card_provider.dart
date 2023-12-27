import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/medical_card_screen/models/medical_card_model.dart';

/// A provider class for the MedicalCardScreen.
///
/// This provider manages the state of the MedicalCardScreen, including the
/// current medicalCardModelObj
class MedicalCardProvider extends ChangeNotifier {
  TextEditingController exCounterController = TextEditingController();

  MedicalCardModel medicalCardModelObj = MedicalCardModel();

  @override
  void dispose() {
    super.dispose();
    exCounterController.dispose();
  }
}
