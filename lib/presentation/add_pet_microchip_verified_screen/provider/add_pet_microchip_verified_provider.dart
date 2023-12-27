import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/add_pet_microchip_verified_screen/models/add_pet_microchip_verified_model.dart';/// A provider class for the AddPetMicrochipVerifiedScreen.
///
/// This provider manages the state of the AddPetMicrochipVerifiedScreen, including the
/// current addPetMicrochipVerifiedModelObj

// ignore_for_file: must_be_immutable
class AddPetMicrochipVerifiedProvider extends ChangeNotifier {AddPetMicrochipVerifiedModel addPetMicrochipVerifiedModelObj = AddPetMicrochipVerifiedModel();

@override void dispose() { super.dispose(); } 
 }
