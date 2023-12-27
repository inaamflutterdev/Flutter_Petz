import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/pet_profile_galerry_screen/models/pet_profile_galerry_model.dart';import '../models/rectanglegrid_item_model.dart';/// A provider class for the PetProfileGalerryScreen.
///
/// This provider manages the state of the PetProfileGalerryScreen, including the
/// current petProfileGalerryModelObj

// ignore_for_file: must_be_immutable
class PetProfileGalerryProvider extends ChangeNotifier {PetProfileGalerryModel petProfileGalerryModelObj = PetProfileGalerryModel();

@override void dispose() { super.dispose(); } 
 }
