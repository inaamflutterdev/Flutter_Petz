import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_add_edit_address1_page/models/emergency_contacts_add_edit_address1_model.dart';

/// A provider class for the EmergencyContactsAddEditAddress1Page.
///
/// This provider manages the state of the EmergencyContactsAddEditAddress1Page, including the
/// current emergencyContactsAddEditAddress1ModelObj
class EmergencyContactsAddEditAddress1Provider extends ChangeNotifier {
  EmergencyContactsAddEditAddress1Model
      emergencyContactsAddEditAddress1ModelObj =
      EmergencyContactsAddEditAddress1Model();

  @override
  void dispose() {
    super.dispose();
  }
}
