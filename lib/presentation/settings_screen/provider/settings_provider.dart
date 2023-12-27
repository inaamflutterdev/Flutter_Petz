import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/settings_screen/models/settings_model.dart';

/// A provider class for the SettingsScreen.
///
/// This provider manages the state of the SettingsScreen, including the
/// current settingsModelObj
class SettingsProvider extends ChangeNotifier {
  SettingsModel settingsModelObj = SettingsModel();

  bool privacySettings = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeCheckBox1(bool value) {
    privacySettings = value;
    notifyListeners();
  }
}
