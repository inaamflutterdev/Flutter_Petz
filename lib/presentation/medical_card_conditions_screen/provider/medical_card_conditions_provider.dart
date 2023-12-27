import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/medical_card_conditions_screen/models/medical_card_conditions_model.dart';import '../models/blindinlefteye_item_model.dart';/// A provider class for the MedicalCardConditionsScreen.
///
/// This provider manages the state of the MedicalCardConditionsScreen, including the
/// current medicalCardConditionsModelObj

// ignore_for_file: must_be_immutable
class MedicalCardConditionsProvider extends ChangeNotifier {MedicalCardConditionsModel medicalCardConditionsModelObj = MedicalCardConditionsModel();

@override void dispose() { super.dispose(); } 
 }
