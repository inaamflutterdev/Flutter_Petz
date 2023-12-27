import 'models/privacy_settings_emergency_contacts_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_switch.dart';
import 'provider/privacy_settings_emergency_contacts_provider.dart';

// ignore_for_file: must_be_immutable
class PrivacySettingsEmergencyContactsBottomsheet extends StatefulWidget {
  const PrivacySettingsEmergencyContactsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacySettingsEmergencyContactsBottomsheetState createState() =>
      PrivacySettingsEmergencyContactsBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacySettingsEmergencyContactsProvider(),
      child: PrivacySettingsEmergencyContactsBottomsheet(),
    );
  }
}

class PrivacySettingsEmergencyContactsBottomsheetState
    extends State<PrivacySettingsEmergencyContactsBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 50.h,
              child: Divider(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_emergency_contacts".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Container(
            width: 315.h,
            margin: EdgeInsets.only(right: 7.h),
            child: Text(
              "msg_toggle_the_data".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Selector<PrivacySettingsEmergencyContactsProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch,
                  builder: (context, isSelectedSwitch, child) {
                    return CustomSwitch(
                      margin: EdgeInsets.only(
                        top: 8.v,
                        bottom: 11.v,
                      ),
                      value: isSelectedSwitch,
                      onChange: (value) {
                        context
                            .read<PrivacySettingsEmergencyContactsProvider>()
                            .changeSwitchBox1(value);
                      },
                    );
                  },
                ),
                Container(
                  width: 104.h,
                  margin: EdgeInsets.only(left: 19.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_jessica_smith".tr,
                          style: CustomTextStyles.titleMediumOnErrorContainer,
                        ),
                        TextSpan(
                          text: "lbl_family".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Selector<PrivacySettingsEmergencyContactsProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch1,
                  builder: (context, isSelectedSwitch1, child) {
                    return CustomSwitch(
                      margin: EdgeInsets.only(
                        top: 7.v,
                        bottom: 12.v,
                      ),
                      value: isSelectedSwitch1,
                      onChange: (value) {
                        context
                            .read<PrivacySettingsEmergencyContactsProvider>()
                            .changeSwitchBox2(value);
                      },
                    );
                  },
                ),
                Container(
                  width: 124.h,
                  margin: EdgeInsets.only(left: 19.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_george_michael".tr,
                          style: CustomTextStyles.titleMediumOnErrorContainer,
                        ),
                        TextSpan(
                          text: "lbl_neighbor".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 58.v),
        ],
      ),
    );
  }
}
