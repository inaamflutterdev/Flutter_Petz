import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/medical_card_allergies_screen/models/medical_card_allergies_model.dart';import '../models/dynamictext_item_model.dart';/// A provider class for the MedicalCardAllergiesScreen.
///
/// This provider manages the state of the MedicalCardAllergiesScreen, including the
/// current medicalCardAllergiesModelObj

// ignore_for_file: must_be_immutable
class MedicalCardAllergiesProvider extends ChangeNotifier {MedicalCardAllergiesModel medicalCardAllergiesModelObj = MedicalCardAllergiesModel();

@override void dispose() { super.dispose(); } 
 }
