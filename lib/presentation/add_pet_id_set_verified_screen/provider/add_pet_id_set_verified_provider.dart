import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/add_pet_id_set_verified_screen/models/add_pet_id_set_verified_model.dart';/// A provider class for the AddPetIdSetVerifiedScreen.
///
/// This provider manages the state of the AddPetIdSetVerifiedScreen, including the
/// current addPetIdSetVerifiedModelObj

// ignore_for_file: must_be_immutable
class AddPetIdSetVerifiedProvider extends ChangeNotifier {TextEditingController selectvalueController = TextEditingController();

AddPetIdSetVerifiedModel addPetIdSetVerifiedModelObj = AddPetIdSetVerifiedModel();

@override void dispose() { super.dispose(); selectvalueController.dispose(); } 
 }
