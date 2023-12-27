import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_add_edit_address_page/models/emergency_contacts_add_edit_address_model.dart';

/// A provider class for the EmergencyContactsAddEditAddressPage.
///
/// This provider manages the state of the EmergencyContactsAddEditAddressPage, including the
/// current emergencyContactsAddEditAddressModelObj
class EmergencyContactsAddEditAddressProvider extends ChangeNotifier {
  EmergencyContactsAddEditAddressModel emergencyContactsAddEditAddressModelObj =
      EmergencyContactsAddEditAddressModel();

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
