import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/privacy_settings_medical_card_bottomsheet/models/privacy_settings_medical_card_model.dart';

/// A provider class for the PrivacySettingsMedicalCardBottomsheet.
///
/// This provider manages the state of the PrivacySettingsMedicalCardBottomsheet, including the
/// current privacySettingsMedicalCardModelObj
class PrivacySettingsMedicalCardProvider extends ChangeNotifier {
  PrivacySettingsMedicalCardModel privacySettingsMedicalCardModelObj =
      PrivacySettingsMedicalCardModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

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

  void changeSwitchBox4(bool value) {
    isSelectedSwitch3 = value;
    notifyListeners();
  }

  void changeSwitchBox5(bool value) {
    isSelectedSwitch4 = value;
    notifyListeners();
  }
}
