import 'models/privacy_settings_medical_card_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_switch.dart';
import 'provider/privacy_settings_medical_card_provider.dart';

// ignore_for_file: must_be_immutable
class PrivacySettingsMedicalCardBottomsheet extends StatefulWidget {
  const PrivacySettingsMedicalCardBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacySettingsMedicalCardBottomsheetState createState() =>
      PrivacySettingsMedicalCardBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacySettingsMedicalCardProvider(),
      child: PrivacySettingsMedicalCardBottomsheet(),
    );
  }
}

class PrivacySettingsMedicalCardBottomsheetState
    extends State<PrivacySettingsMedicalCardBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 12.v,
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
          SizedBox(height: 9.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "msg_medical_card_privacy".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            width: 315.h,
            child: Text(
              "msg_toggle_the_data".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                height: 1.50,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Row(
            children: [
              Selector<PrivacySettingsMedicalCardProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch,
                builder: (context, isSelectedSwitch, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<PrivacySettingsMedicalCardProvider>()
                          .changeSwitchBox1(value);
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_vaccinations".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 29.v),
          Row(
            children: [
              Selector<PrivacySettingsMedicalCardProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch1,
                builder: (context, isSelectedSwitch1, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch1,
                    onChange: (value) {
                      context
                          .read<PrivacySettingsMedicalCardProvider>()
                          .changeSwitchBox2(value);
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_procedures".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Row(
            children: [
              Selector<PrivacySettingsMedicalCardProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch2,
                builder: (context, isSelectedSwitch2, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch2,
                    onChange: (value) {
                      context
                          .read<PrivacySettingsMedicalCardProvider>()
                          .changeSwitchBox3(value);
                    },
                  );
                },
              ),
              Container(
                height: 21.v,
                width: 85.h,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 5.v,
                  bottom: 3.v,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_conditions".tr,
                        style: CustomTextStyles.titleMediumGray900,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "lbl_conditions".tr,
                        style: CustomTextStyles.titleMediumGray900,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Row(
            children: [
              Selector<PrivacySettingsMedicalCardProvider, bool?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.isSelectedSwitch3,
                builder: (context, isSelectedSwitch3, child) {
                  return CustomSwitch(
                    value: isSelectedSwitch3,
                    onChange: (value) {
                      context
                          .read<PrivacySettingsMedicalCardProvider>()
                          .changeSwitchBox4(value);
                    },
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 7.v,
                ),
                child: Text(
                  "lbl_allergies".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Selector<PrivacySettingsMedicalCardProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch4,
                  builder: (context, isSelectedSwitch4, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch4,
                      onChange: (value) {
                        context
                            .read<PrivacySettingsMedicalCardProvider>()
                            .changeSwitchBox5(value);
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 5.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_medications".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.v),
        ],
      ),
    );
  }
}
