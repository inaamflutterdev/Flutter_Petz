import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/add_pet_step_2_four_bottomsheet/models/add_pet_step_2_four_model.dart';

/// A provider class for the AddPetStep2FourBottomsheet.
///
/// This provider manages the state of the AddPetStep2FourBottomsheet, including the
/// current addPetStep2FourModelObj
class AddPetStep2FourProvider extends ChangeNotifier {
  AddPetStep2FourModel addPetStep2FourModelObj = AddPetStep2FourModel();

  @override
  void dispose() {
    super.dispose();
  }
}
