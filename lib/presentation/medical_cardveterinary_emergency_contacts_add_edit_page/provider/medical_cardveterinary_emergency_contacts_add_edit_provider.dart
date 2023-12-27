import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/medical_cardveterinary_emergency_contacts_add_edit_page/models/medical_cardveterinary_emergency_contacts_add_edit_model.dart';

/// A provider class for the MedicalCardveterinaryEmergencyContactsAddEditPage.
///
/// This provider manages the state of the MedicalCardveterinaryEmergencyContactsAddEditPage, including the
/// current medicalCardveterinaryEmergencyContactsAddEditModelObj
class MedicalCardveterinaryEmergencyContactsAddEditProvider
    extends ChangeNotifier {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  MedicalCardveterinaryEmergencyContactsAddEditModel
      medicalCardveterinaryEmergencyContactsAddEditModelObj =
      MedicalCardveterinaryEmergencyContactsAddEditModel();

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    emailController.dispose();
  }
}
