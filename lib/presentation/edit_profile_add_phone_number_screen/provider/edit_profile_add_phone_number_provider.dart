import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/edit_profile_add_phone_number_screen/models/edit_profile_add_phone_number_model.dart';

/// A provider class for the EditProfileAddPhoneNumberScreen.
///
/// This provider manages the state of the EditProfileAddPhoneNumberScreen, including the
/// current editProfileAddPhoneNumberModelObj
class EditProfileAddPhoneNumberProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  EditProfileAddPhoneNumberModel editProfileAddPhoneNumberModelObj =
      EditProfileAddPhoneNumberModel();

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
  }
}
