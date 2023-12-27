import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/phone_verification_screen/models/phone_verification_model.dart';

/// A provider class for the PhoneVerificationScreen.
///
/// This provider manages the state of the PhoneVerificationScreen, including the
/// current phoneVerificationModelObj
class PhoneVerificationProvider extends ChangeNotifier {
  TextEditingController otpController = TextEditingController();

  PhoneVerificationModel phoneVerificationModelObj = PhoneVerificationModel();

  @override
  void dispose() {
    super.dispose();
  }
}
