import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_switch.dart';
import 'provider/theme_settings_provider.dart';

// ignore_for_file: must_be_immutable
class ThemeSettingsBottomsheet extends StatefulWidget {
  const ThemeSettingsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ThemeSettingsBottomsheetState createState() =>
      ThemeSettingsBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeSettingsProvider(),
      child: ThemeSettingsBottomsheet(),
    );
  }
}

class ThemeSettingsBottomsheetState extends State<ThemeSettingsBottomsheet> {
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
          _buildLineThirtyThreeColumn(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLineThirtyThreeColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 15.v,
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
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_theme".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            "msg_toggle_the_turn2".tr,
            style: CustomTextStyles.bodySmallErrorContainer,
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Selector<ThemeSettingsProvider, bool?>(
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
                            .read<ThemeSettingsProvider>()
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
                    "lbl_dark_mode".tr,
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
