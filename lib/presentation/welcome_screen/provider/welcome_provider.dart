import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/welcome_screen/models/welcome_model.dart';

/// A provider class for the WelcomeScreen.
///
/// This provider manages the state of the WelcomeScreen, including the
/// current welcomeModelObj
class WelcomeProvider extends ChangeNotifier {
  WelcomeModel welcomeModelObj = WelcomeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
