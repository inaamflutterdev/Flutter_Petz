import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/medical_card_procedures_screen/models/medical_card_procedures_model.dart';import '../models/userprofile8_item_model.dart';/// A provider class for the MedicalCardProceduresScreen.
///
/// This provider manages the state of the MedicalCardProceduresScreen, including the
/// current medicalCardProceduresModelObj

// ignore_for_file: must_be_immutable
class MedicalCardProceduresProvider extends ChangeNotifier {MedicalCardProceduresModel medicalCardProceduresModelObj = MedicalCardProceduresModel();

@override void dispose() { super.dispose(); } 
 }
