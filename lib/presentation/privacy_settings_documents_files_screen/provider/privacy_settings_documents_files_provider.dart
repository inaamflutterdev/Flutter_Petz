import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/privacy_settings_documents_files_screen/models/privacy_settings_documents_files_model.dart';

/// A provider class for the PrivacySettingsDocumentsFilesScreen.
///
/// This provider manages the state of the PrivacySettingsDocumentsFilesScreen, including the
/// current privacySettingsDocumentsFilesModelObj
class PrivacySettingsDocumentsFilesProvider extends ChangeNotifier {
  PrivacySettingsDocumentsFilesModel privacySettingsDocumentsFilesModelObj =
      PrivacySettingsDocumentsFilesModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  @override
  void dispose() {
    super.dispose();
  }

  void changeSwitchBox1(bool value) {
    isSelectedSwitch = value;
    notifyListeners();
  }

  void changeSwitchBox2(bool value) {
    isSelectedSwitch1 = value;
    notifyListeners();
  }

  void changeSwitchBox3(bool value) {
    isSelectedSwitch2 = value;
    notifyListeners();
  }
}
