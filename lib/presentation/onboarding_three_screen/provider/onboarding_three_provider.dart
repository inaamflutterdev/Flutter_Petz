import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/onboarding_three_screen/models/onboarding_three_model.dart';

/// A provider class for the OnboardingThreeScreen.
///
/// This provider manages the state of the OnboardingThreeScreen, including the
/// current onboardingThreeModelObj
class OnboardingThreeProvider extends ChangeNotifier {
  OnboardingThreeModel onboardingThreeModelObj = OnboardingThreeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
