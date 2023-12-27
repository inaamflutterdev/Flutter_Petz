import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/privacy_settings1_screen/models/privacy_settings1_model.dart';

/// A provider class for the PrivacySettings1Screen.
///
/// This provider manages the state of the PrivacySettings1Screen, including the
/// current privacySettings1ModelObj
class PrivacySettings1Provider extends ChangeNotifier {
  PrivacySettings1Model privacySettings1ModelObj = PrivacySettings1Model();

  @override
  void dispose() {
    super.dispose();
  }
}
