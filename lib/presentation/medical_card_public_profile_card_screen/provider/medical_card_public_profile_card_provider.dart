import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/medical_card_public_profile_card_screen/models/medical_card_public_profile_card_model.dart';import '../models/vaccinationstats_item_model.dart';/// A provider class for the MedicalCardPublicProfileCardScreen.
///
/// This provider manages the state of the MedicalCardPublicProfileCardScreen, including the
/// current medicalCardPublicProfileCardModelObj

// ignore_for_file: must_be_immutable
class MedicalCardPublicProfileCardProvider extends ChangeNotifier {MedicalCardPublicProfileCardModel medicalCardPublicProfileCardModelObj = MedicalCardPublicProfileCardModel();

@override void dispose() { super.dispose(); } 
 }
