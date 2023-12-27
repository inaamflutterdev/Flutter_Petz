import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/profile_select_birthday_bottomsheet/models/profile_select_birthday_model.dart';

/// A provider class for the ProfileSelectBirthdayBottomsheet.
///
/// This provider manages the state of the ProfileSelectBirthdayBottomsheet, including the
/// current profileSelectBirthdayModelObj
class ProfileSelectBirthdayProvider extends ChangeNotifier {
  ProfileSelectBirthdayModel profileSelectBirthdayModelObj =
      ProfileSelectBirthdayModel();

  @override
  void dispose() {
    super.dispose();
  }
}
