import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/pet_profile_emergency_contacts_screen/models/pet_profile_emergency_contacts_model.dart';import '../models/petprofilelist_item_model.dart';/// A provider class for the PetProfileEmergencyContactsScreen.
///
/// This provider manages the state of the PetProfileEmergencyContactsScreen, including the
/// current petProfileEmergencyContactsModelObj

// ignore_for_file: must_be_immutable
class PetProfileEmergencyContactsProvider extends ChangeNotifier {PetProfileEmergencyContactsModel petProfileEmergencyContactsModelObj = PetProfileEmergencyContactsModel();

@override void dispose() { super.dispose(); } 
 }
