import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/privacy_settings_emergency_contacts_bottomsheet/models/privacy_settings_emergency_contacts_model.dart';

/// A provider class for the PrivacySettingsEmergencyContactsBottomsheet.
///
/// This provider manages the state of the PrivacySettingsEmergencyContactsBottomsheet, including the
/// current privacySettingsEmergencyContactsModelObj
class PrivacySettingsEmergencyContactsProvider extends ChangeNotifier {
  PrivacySettingsEmergencyContactsModel
      privacySettingsEmergencyContactsModelObj =
      PrivacySettingsEmergencyContactsModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

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
}
