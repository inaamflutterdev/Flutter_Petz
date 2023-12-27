import 'models/privacy_settings_pet_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_switch.dart';
import 'provider/privacy_settings_pet_profile_provider.dart';

// ignore_for_file: must_be_immutable
class PrivacySettingsPetProfileBottomsheet extends StatefulWidget {
  const PrivacySettingsPetProfileBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacySettingsPetProfileBottomsheetState createState() =>
      PrivacySettingsPetProfileBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacySettingsPetProfileProvider(),
      child: PrivacySettingsPetProfileBottomsheet(),
    );
  }
}

class PrivacySettingsPetProfileBottomsheetState
    extends State<PrivacySettingsPetProfileBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 16.v,
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
              "msg_pet_profile_privacy".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 13.v),
          Container(
            width: 315.h,
            margin: EdgeInsets.only(right: 19.h),
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
          Row(
            children: [
              Selector<PrivacySettingsPetProfileProvider, bool?>(
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
                          .read<PrivacySettingsPetProfileProvider>()
                          .changeSwitchBox1(value);
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
                  "msg_personality_about2".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 27.v),
          Row(
            children: [
              Selector<PrivacySettingsPetProfileProvider, bool?>(
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
                          .read<PrivacySettingsPetProfileProvider>()
                          .changeSwitchBox2(value);
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
                  "lbl_spayed_neutered".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.only(right: 50.h),
            child: Row(
              children: [
                Selector<PrivacySettingsPetProfileProvider, bool?>(
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
                            .read<PrivacySettingsPetProfileProvider>()
                            .changeSwitchBox3(value);
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
                    "lbl_picture".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 107.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Selector<PrivacySettingsPetProfileProvider, bool?>(
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
                                  .read<PrivacySettingsPetProfileProvider>()
                                  .changeSwitchBox4(value);
                            },
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.v),
                        child: Text(
                          "lbl_age".tr,
                          style: CustomTextStyles.titleMediumGray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 34.v),
          _buildBreedRow(context),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(right: 50.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Selector<PrivacySettingsPetProfileProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch6,
                  builder: (context, isSelectedSwitch6, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch6,
                      onChange: (value) {
                        context
                            .read<PrivacySettingsPetProfileProvider>()
                            .changeSwitchBox7(value);
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 7.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_color".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
                Spacer(),
                Selector<PrivacySettingsPetProfileProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch7,
                  builder: (context, isSelectedSwitch7, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch7,
                      onChange: (value) {
                        context
                            .read<PrivacySettingsPetProfileProvider>()
                            .changeSwitchBox8(value);
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_size".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.v),
          _buildCoatTypeRow(context),
          SizedBox(height: 33.v),
          _buildEarTypeRow(context),
          SizedBox(height: 81.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBreedRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 23.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Selector<PrivacySettingsPetProfileProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch4,
            builder: (context, isSelectedSwitch4, child) {
              return CustomSwitch(
                margin: EdgeInsets.only(top: 3.v),
                value: isSelectedSwitch4,
                onChange: (value) {
                  context
                      .read<PrivacySettingsPetProfileProvider>()
                      .changeSwitchBox5(value);
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 8.v,
              bottom: 3.v,
            ),
            child: Text(
              "lbl_breed".tr,
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
          Spacer(),
          Container(
            width: 134.h,
            margin: EdgeInsets.only(bottom: 3.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Selector<PrivacySettingsPetProfileProvider, bool?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.isSelectedSwitch5,
                  builder: (context, isSelectedSwitch5, child) {
                    return CustomSwitch(
                      value: isSelectedSwitch5,
                      onChange: (value) {
                        context
                            .read<PrivacySettingsPetProfileProvider>()
                            .changeSwitchBox6(value);
                      },
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_gender".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCoatTypeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 17.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Selector<PrivacySettingsPetProfileProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch8,
            builder: (context, isSelectedSwitch8, child) {
              return CustomSwitch(
                margin: EdgeInsets.only(top: 1.v),
                value: isSelectedSwitch8,
                onChange: (value) {
                  context
                      .read<PrivacySettingsPetProfileProvider>()
                      .changeSwitchBox9(value);
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.v),
            child: Text(
              "lbl_coat_type".tr,
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
          Selector<PrivacySettingsPetProfileProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch9,
            builder: (context, isSelectedSwitch9, child) {
              return CustomSwitch(
                value: isSelectedSwitch9,
                onChange: (value) {
                  context
                      .read<PrivacySettingsPetProfileProvider>()
                      .changeSwitchBox10(value);
                },
              );
            },
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_tail_type".tr,
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEarTypeRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 26.h),
      child: Row(
        children: [
          Selector<PrivacySettingsPetProfileProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch10,
            builder: (context, isSelectedSwitch10, child) {
              return CustomSwitch(
                value: isSelectedSwitch10,
                onChange: (value) {
                  context
                      .read<PrivacySettingsPetProfileProvider>()
                      .changeSwitchBox11(value);
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
              "lbl_ear_type".tr,
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
          Spacer(),
          Selector<PrivacySettingsPetProfileProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch11,
            builder: (context, isSelectedSwitch11, child) {
              return CustomSwitch(
                value: isSelectedSwitch11,
                onChange: (value) {
                  context
                      .read<PrivacySettingsPetProfileProvider>()
                      .changeSwitchBox12(value);
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
              "lbl_weight".tr,
              style: CustomTextStyles.titleMediumGray900,
            ),
          ),
        ],
      ),
    );
  }
}
