import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_add_edit_profile_page/models/emergency_contacts_add_edit_profile_model.dart';

/// A provider class for the EmergencyContactsAddEditProfilePage.
///
/// This provider manages the state of the EmergencyContactsAddEditProfilePage, including the
/// current emergencyContactsAddEditProfileModelObj
class EmergencyContactsAddEditProfileProvider extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  EmergencyContactsAddEditProfileModel emergencyContactsAddEditProfileModelObj =
      EmergencyContactsAddEditProfileModel();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
  }
}
