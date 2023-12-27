import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/add_pet_step_1_two_screen/models/add_pet_step_1_two_model.dart';import '../models/vaccination_item_model.dart';/// A provider class for the AddPetStep1TwoScreen.
///
/// This provider manages the state of the AddPetStep1TwoScreen, including the
/// current addPetStep1TwoModelObj

// ignore_for_file: must_be_immutable
class AddPetStep1TwoProvider extends ChangeNotifier {AddPetStep1TwoModel addPetStep1TwoModelObj = AddPetStep1TwoModel();

@override void dispose() { super.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { addPetStep1TwoModelObj.vaccinationItemList.forEach((element) {element.isSelected = false;}); addPetStep1TwoModelObj.vaccinationItemList[index].isSelected = value; notifyListeners(); } 
 }
