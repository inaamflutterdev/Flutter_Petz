import 'package:flutter/material.dart';
import 'package:inaam_s_application1/presentation/add_edit_vaccination_bottomsheet/models/add_edit_vaccination_model.dart';

/// A provider class for the AddEditVaccinationBottomsheet.
///
/// This provider manages the state of the AddEditVaccinationBottomsheet, including the
/// current addEditVaccinationModelObj
class AddEditVaccinationProvider extends ChangeNotifier {
  TextEditingController pristiagmailcomController = TextEditingController();

  AddEditVaccinationModel addEditVaccinationModelObj =
      AddEditVaccinationModel();

  @override
  void dispose() {
    super.dispose();
    pristiagmailcomController.dispose();
  }
}
