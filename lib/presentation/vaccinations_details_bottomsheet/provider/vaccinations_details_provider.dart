import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/vaccinations_details_bottomsheet/models/vaccinations_details_model.dart';import '../models/vaccinationfields_item_model.dart';/// A provider class for the VaccinationsDetailsBottomsheet.
///
/// This provider manages the state of the VaccinationsDetailsBottomsheet, including the
/// current vaccinationsDetailsModelObj

// ignore_for_file: must_be_immutable
class VaccinationsDetailsProvider extends ChangeNotifier {VaccinationsDetailsModel vaccinationsDetailsModelObj = VaccinationsDetailsModel();

@override void dispose() { super.dispose(); } 
 }
