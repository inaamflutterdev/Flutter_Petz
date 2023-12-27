import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/terms_conditions_privacy_policy_bottomsheet/models/terms_conditions_privacy_policy_model.dart';

/// A provider class for the TermsConditionsPrivacyPolicyBottomsheet.
///
/// This provider manages the state of the TermsConditionsPrivacyPolicyBottomsheet, including the
/// current termsConditionsPrivacyPolicyModelObj
class TermsConditionsPrivacyPolicyProvider extends ChangeNotifier {
  TermsConditionsPrivacyPolicyModel termsConditionsPrivacyPolicyModelObj =
      TermsConditionsPrivacyPolicyModel();

  @override
  void dispose() {
    super.dispose();
  }
}
