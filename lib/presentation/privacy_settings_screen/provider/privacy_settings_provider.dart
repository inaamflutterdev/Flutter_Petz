import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/privacy_settings_screen/models/privacy_settings_model.dart';import '../models/privacysettingslist_item_model.dart';/// A provider class for the PrivacySettingsScreen.
///
/// This provider manages the state of the PrivacySettingsScreen, including the
/// current privacySettingsModelObj

// ignore_for_file: must_be_immutable
class PrivacySettingsProvider extends ChangeNotifier {PrivacySettingsModel privacySettingsModelObj = PrivacySettingsModel();

@override void dispose() { super.dispose(); } 
 }
