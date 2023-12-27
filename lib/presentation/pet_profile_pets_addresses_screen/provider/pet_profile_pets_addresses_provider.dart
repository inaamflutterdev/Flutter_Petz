import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/pet_profile_pets_addresses_screen/models/pet_profile_pets_addresses_model.dart';import '../models/userprofile5_item_model.dart';/// A provider class for the PetProfilePetsAddressesScreen.
///
/// This provider manages the state of the PetProfilePetsAddressesScreen, including the
/// current petProfilePetsAddressesModelObj

// ignore_for_file: must_be_immutable
class PetProfilePetsAddressesProvider extends ChangeNotifier {PetProfilePetsAddressesModel petProfilePetsAddressesModelObj = PetProfilePetsAddressesModel();

@override void dispose() { super.dispose(); } 
 }
