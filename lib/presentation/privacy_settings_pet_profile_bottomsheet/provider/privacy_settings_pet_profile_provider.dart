import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/privacy_settings_pet_profile_bottomsheet/models/privacy_settings_pet_profile_model.dart';

/// A provider class for the PrivacySettingsPetProfileBottomsheet.
///
/// This provider manages the state of the PrivacySettingsPetProfileBottomsheet, including the
/// current privacySettingsPetProfileModelObj
class PrivacySettingsPetProfileProvider extends ChangeNotifier {
  PrivacySettingsPetProfileModel privacySettingsPetProfileModelObj =
      PrivacySettingsPetProfileModel();

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

  bool isSelectedSwitch4 = false;

  bool isSelectedSwitch5 = false;

  bool isSelectedSwitch6 = false;

  bool isSelectedSwitch7 = false;

  bool isSelectedSwitch8 = false;

  bool isSelectedSwitch9 = false;

  bool isSelectedSwitch10 = false;

  bool isSelectedSwitch11 = false;

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

  void changeSwitchBox6(bool value) {
    isSelectedSwitch5 = value;
    notifyListeners();
  }

  void changeSwitchBox7(bool value) {
    isSelectedSwitch6 = value;
    notifyListeners();
  }

  void changeSwitchBox8(bool value) {
    isSelectedSwitch7 = value;
    notifyListeners();
  }

  void changeSwitchBox9(bool value) {
    isSelectedSwitch8 = value;
    notifyListeners();
  }

  void changeSwitchBox10(bool value) {
    isSelectedSwitch9 = value;
    notifyListeners();
  }

  void changeSwitchBox11(bool value) {
    isSelectedSwitch10 = value;
    notifyListeners();
  }

  void changeSwitchBox12(bool value) {
    isSelectedSwitch11 = value;
    notifyListeners();
  }
}
