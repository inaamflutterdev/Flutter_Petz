import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/theme_settings_bottomsheet/models/theme_settings_model.dart';

/// A provider class for the ThemeSettingsBottomsheet.
///
/// This provider manages the state of the ThemeSettingsBottomsheet, including the
/// current themeSettingsModelObj
class ThemeSettingsProvider extends ChangeNotifier {
  ThemeSettingsModel themeSettingsModelObj = ThemeSettingsModel();

  bool isSelectedSwitch = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }
}
