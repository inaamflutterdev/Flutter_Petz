import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pets_allergies_add_edit_bottomsheet/models/pets_allergies_add_edit_model.dart';

/// A provider class for the PetsAllergiesAddEditBottomsheet.
///
/// This provider manages the state of the PetsAllergiesAddEditBottomsheet, including the
/// current petsAllergiesAddEditModelObj
class PetsAllergiesAddEditProvider extends ChangeNotifier {
  PetsAllergiesAddEditModel petsAllergiesAddEditModelObj =
      PetsAllergiesAddEditModel();

  @override
  void dispose() {
    super.dispose();
  }
}
