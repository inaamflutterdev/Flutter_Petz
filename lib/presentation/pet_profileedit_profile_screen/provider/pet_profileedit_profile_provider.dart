import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/pet_profileedit_profile_screen/models/pet_profileedit_profile_model.dart';import '../models/line_item_model.dart';/// A provider class for the PetProfileeditProfileScreen.
///
/// This provider manages the state of the PetProfileeditProfileScreen, including the
/// current petProfileeditProfileModelObj

// ignore_for_file: must_be_immutable
class PetProfileeditProfileProvider extends ChangeNotifier {TextEditingController dateController = TextEditingController();

TextEditingController settingsController = TextEditingController();

TextEditingController mapController = TextEditingController();

PetProfileeditProfileModel petProfileeditProfileModelObj = PetProfileeditProfileModel();

@override void dispose() { super.dispose(); dateController.dispose(); settingsController.dispose(); mapController.dispose(); } 
 }
