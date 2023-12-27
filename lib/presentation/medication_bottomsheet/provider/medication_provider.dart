import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/medication_bottomsheet/models/medication_model.dart';import '../models/form_item_model.dart';/// A provider class for the MedicationBottomsheet.
///
/// This provider manages the state of the MedicationBottomsheet, including the
/// current medicationModelObj

// ignore_for_file: must_be_immutable
class MedicationProvider extends ChangeNotifier {MedicationModel medicationModelObj = MedicationModel();

@override void dispose() { super.dispose(); } 
 }
