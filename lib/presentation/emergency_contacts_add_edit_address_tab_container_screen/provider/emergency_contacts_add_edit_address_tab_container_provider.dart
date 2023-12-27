import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_add_edit_address_tab_container_screen/models/emergency_contacts_add_edit_address_tab_container_model.dart';

/// A provider class for the EmergencyContactsAddEditAddressTabContainerScreen.
///
/// This provider manages the state of the EmergencyContactsAddEditAddressTabContainerScreen, including the
/// current emergencyContactsAddEditAddressTabContainerModelObj
class EmergencyContactsAddEditAddressTabContainerProvider
    extends ChangeNotifier {
  EmergencyContactsAddEditAddressTabContainerModel
      emergencyContactsAddEditAddressTabContainerModelObj =
      EmergencyContactsAddEditAddressTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
