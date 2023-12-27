import 'models/terms_conditions_privacy_policy_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/terms_conditions_privacy_policy_provider.dart';

// ignore_for_file: must_be_immutable
class TermsConditionsPrivacyPolicyBottomsheet extends StatefulWidget {
  const TermsConditionsPrivacyPolicyBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  TermsConditionsPrivacyPolicyBottomsheetState createState() =>
      TermsConditionsPrivacyPolicyBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TermsConditionsPrivacyPolicyProvider(),
      child: TermsConditionsPrivacyPolicyBottomsheet(),
    );
  }
}

class TermsConditionsPrivacyPolicyBottomsheetState
    extends State<TermsConditionsPrivacyPolicyBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 50.h,
            child: Divider(
              color: theme.colorScheme.primary,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "msg_terms_conditions".tr,
            style: CustomTextStyles.titleMedium_1,
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 315.h,
            child: Text(
              "msg_this_universal_terms".tr,
              maxLines: 28,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmall_1.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 45.v),
        ],
      ),
    );
  }
}
