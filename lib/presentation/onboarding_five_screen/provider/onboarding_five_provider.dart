import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/onboarding_five_screen/models/onboarding_five_model.dart';

/// A provider class for the OnboardingFiveScreen.
///
/// This provider manages the state of the OnboardingFiveScreen, including the
/// current onboardingFiveModelObj
class OnboardingFiveProvider extends ChangeNotifier {
  OnboardingFiveModel onboardingFiveModelObj = OnboardingFiveModel();

  @override
  void dispose() {
    super.dispose();
  }
}
