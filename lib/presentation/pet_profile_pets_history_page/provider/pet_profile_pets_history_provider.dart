import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/pet_profile_pets_history_page/models/pet_profile_pets_history_model.dart';import '../models/userprofile6_item_model.dart';/// A provider class for the PetProfilePetsHistoryPage.
///
/// This provider manages the state of the PetProfilePetsHistoryPage, including the
/// current petProfilePetsHistoryModelObj

// ignore_for_file: must_be_immutable
class PetProfilePetsHistoryProvider extends ChangeNotifier {PetProfilePetsHistoryModel petProfilePetsHistoryModelObj = PetProfilePetsHistoryModel();

@override void dispose() { super.dispose(); } 
 }
