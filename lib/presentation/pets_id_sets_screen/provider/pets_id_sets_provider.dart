import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pets_id_sets_screen/models/pets_id_sets_model.dart';

/// A provider class for the PetsIdSetsScreen.
///
/// This provider manages the state of the PetsIdSetsScreen, including the
/// current petsIdSetsModelObj
class PetsIdSetsProvider extends ChangeNotifier {
  PetsIdSetsModel petsIdSetsModelObj = PetsIdSetsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
