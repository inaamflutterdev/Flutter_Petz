import 'models/notification_settings_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_switch.dart';
import 'provider/notification_settings_provider.dart';

// ignore_for_file: must_be_immutable
class NotificationSettingsBottomsheet extends StatefulWidget {
  const NotificationSettingsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationSettingsBottomsheetState createState() =>
      NotificationSettingsBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationSettingsProvider(),
      child: NotificationSettingsBottomsheet(),
    );
  }
}

class NotificationSettingsBottomsheetState
    extends State<NotificationSettingsBottomsheet> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Spacer(),
          _buildLineThirtyThree(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineThirtyThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
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
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_notifications".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "msg_toggle_the_turn".tr,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Selector<NotificationSettingsProvider, bool?>(
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
                            .read<NotificationSettingsProvider>()
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
                    "msg_profile_updates".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.v),
          Row(
            children: [
              Selector<NotificationSettingsProvider, bool?>(
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
                          .read<NotificationSettingsProvider>()
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
                  "msg_owner_card_scans".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 29.v),
          Row(
            children: [
              Selector<NotificationSettingsProvider, bool?>(
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
                          .read<NotificationSettingsProvider>()
                          .changeSwitchBox3(value);
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
                  "lbl_tag_scans".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Row(
            children: [
              Selector<NotificationSettingsProvider, bool?>(
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
                          .read<NotificationSettingsProvider>()
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
                  "msg_microchip_search".tr,
                  style: CustomTextStyles.titleMediumGray900,
                ),
              ),
            ],
          ),
          SizedBox(height: 35.v),
          Padding(
            padding: EdgeInsets.only(right: 54.h),
            child: Row(
              children: [
                Selector<NotificationSettingsProvider, bool?>(
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
                            .read<NotificationSettingsProvider>()
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
                    "msg_lost_pet_announcments".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 35.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Selector<NotificationSettingsProvider, bool?>(
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
                            .read<NotificationSettingsProvider>()
                            .changeSwitchBox6(value);
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
                    "lbl_pets_id".tr,
                    style: CustomTextStyles.titleMediumGray900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
