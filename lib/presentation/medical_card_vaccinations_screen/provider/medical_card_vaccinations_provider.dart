import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/medical_card_vaccinations_screen/models/medical_card_vaccinations_model.dart';import '../models/userprofile7_item_model.dart';/// A provider class for the MedicalCardVaccinationsScreen.
///
/// This provider manages the state of the MedicalCardVaccinationsScreen, including the
/// current medicalCardVaccinationsModelObj

// ignore_for_file: must_be_immutable
class MedicalCardVaccinationsProvider extends ChangeNotifier {MedicalCardVaccinationsModel medicalCardVaccinationsModelObj = MedicalCardVaccinationsModel();

@override void dispose() { super.dispose(); } 
 }
