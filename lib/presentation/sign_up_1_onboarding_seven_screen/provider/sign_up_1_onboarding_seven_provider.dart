import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/sign_up_1_onboarding_seven_screen/models/sign_up_1_onboarding_seven_model.dart';

/// A provider class for the SignUp1OnboardingSevenScreen.
///
/// This provider manages the state of the SignUp1OnboardingSevenScreen, including the
/// current signUp1OnboardingSevenModelObj
class SignUp1OnboardingSevenProvider extends ChangeNotifier {
  SignUp1OnboardingSevenModel signUp1OnboardingSevenModelObj =
      SignUp1OnboardingSevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
