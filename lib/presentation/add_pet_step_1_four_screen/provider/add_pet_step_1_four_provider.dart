import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/add_pet_step_1_four_screen/models/add_pet_step_1_four_model.dart';import '../models/userprofile_item_model.dart';/// A provider class for the AddPetStep1FourScreen.
///
/// This provider manages the state of the AddPetStep1FourScreen, including the
/// current addPetStep1FourModelObj

// ignore_for_file: must_be_immutable
class AddPetStep1FourProvider extends ChangeNotifier {AddPetStep1FourModel addPetStep1FourModelObj = AddPetStep1FourModel();

@override void dispose() { super.dispose(); } 
 }
