import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/edit_profile_screen/models/edit_profile_model.dart';

/// A provider class for the EditProfileScreen.
///
/// This provider manages the state of the EditProfileScreen, including the
/// current editProfileModelObj
class EditProfileProvider extends ChangeNotifier {
  EditProfileModel editProfileModelObj = EditProfileModel();

  @override
  void dispose() {
    super.dispose();
  }
}
