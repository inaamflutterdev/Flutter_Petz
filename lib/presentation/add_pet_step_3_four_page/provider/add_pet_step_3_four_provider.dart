import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/add_pet_step_3_four_page/models/add_pet_step_3_four_model.dart';

/// A provider class for the AddPetStep3FourPage.
///
/// This provider manages the state of the AddPetStep3FourPage, including the
/// current addPetStep3FourModelObj
class AddPetStep3FourProvider extends ChangeNotifier {
  TextEditingController exCounterController = TextEditingController();

  AddPetStep3FourModel addPetStep3FourModelObj = AddPetStep3FourModel();

  @override
  void dispose() {
    super.dispose();
    exCounterController.dispose();
  }
}
