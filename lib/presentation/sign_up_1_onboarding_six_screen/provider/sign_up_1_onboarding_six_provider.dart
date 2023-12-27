import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/sign_up_1_onboarding_six_screen/models/sign_up_1_onboarding_six_model.dart';

/// A provider class for the SignUp1OnboardingSixScreen.
///
/// This provider manages the state of the SignUp1OnboardingSixScreen, including the
/// current signUp1OnboardingSixModelObj
class SignUp1OnboardingSixProvider extends ChangeNotifier {
  SignUp1OnboardingSixModel signUp1OnboardingSixModelObj =
      SignUp1OnboardingSixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
