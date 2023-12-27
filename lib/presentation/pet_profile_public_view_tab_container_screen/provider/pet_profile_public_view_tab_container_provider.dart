import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_public_view_tab_container_screen/models/pet_profile_public_view_tab_container_model.dart';

/// A provider class for the PetProfilePublicViewTabContainerScreen.
///
/// This provider manages the state of the PetProfilePublicViewTabContainerScreen, including the
/// current petProfilePublicViewTabContainerModelObj
class PetProfilePublicViewTabContainerProvider extends ChangeNotifier {
  PetProfilePublicViewTabContainerModel
      petProfilePublicViewTabContainerModelObj =
      PetProfilePublicViewTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
