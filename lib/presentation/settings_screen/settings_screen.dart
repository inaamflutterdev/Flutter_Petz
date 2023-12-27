import 'models/settings_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_checkbox_button.dart';
import 'provider/settings_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingsScreenState createState() => SettingsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingsProvider(),
      child: SettingsScreen(),
    );
  }
}

class SettingsScreenState extends State<SettingsScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              _buildPrivacySettings(context),
              SizedBox(height: 30.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlueGray10001,
                height: 38.v,
                width: 108.h,
              ),
              SizedBox(height: 6.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 82.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroupBlack900,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPrivacySettings(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "lbl_settings".tr,
            style: CustomTextStyles.titleMediumBold,
          ),
        ),
        SizedBox(height: 2.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "lbl_app_settings".tr,
            style: CustomTextStyles.bodySmallErrorContainer,
          ),
        ),
        SizedBox(height: 19.v),
        Selector<SettingsProvider, bool?>(
          selector: (
            context,
            provider,
          ) =>
              provider.privacySettings,
          builder: (context, privacySettings, child) {
            return CustomCheckboxButton(
              width: 315.h,
              text: "msg_privacy_settings".tr,
              value: privacySettings,
              textStyle: CustomTextStyles.titleMedium_1,
              isRightCheck: true,
              onChange: (value) {
                context.read<SettingsProvider>().changeCheckBox1(value);
              },
            );
          },
        ),
        SizedBox(height: 17.v),
        _buildFeedback(
          context,
          feedbackText: "lbl_notifications".tr,
          videoCameraImage: ImageConstant.imgNotification,
        ),
        SizedBox(height: 19.v),
        Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_theme".tr,
                  style: CustomTextStyles.titleMedium_1,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMenu,
                height: 24.v,
                width: 16.h,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
        _buildFeedback(
          context,
          feedbackText: "lbl_feedback".tr,
          videoCameraImage: ImageConstant.imgVideoCameraBlack90024x24,
        ),
        SizedBox(height: 19.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(
                "lbl_support".tr,
                style: CustomTextStyles.titleMedium_1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgProfile,
              height: 22.adaptSize,
              width: 22.adaptSize,
              margin: EdgeInsets.only(bottom: 2.v),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        _buildFeedback(
          context,
          feedbackText: "lbl_rate".tr,
          videoCameraImage: ImageConstant.imgSignal,
        ),
        SizedBox(height: 19.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "lbl_share".tr,
                style: CustomTextStyles.titleMedium_1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSend,
              height: 24.v,
              width: 21.h,
            ),
          ],
        ),
        SizedBox(height: 19.v),
        _buildFeedback(
          context,
          feedbackText: "lbl_version".tr,
          videoCameraImage: ImageConstant.imgMinimize,
        ),
        SizedBox(height: 21.v),
        _buildFeedback(
          context,
          feedbackText: "msg_terms_conditions".tr,
          videoCameraImage: ImageConstant.imgMenuOnerrorcontainer,
        ),
        SizedBox(height: 21.v),
        _buildFeedback(
          context,
          feedbackText: "lbl_privacy_policy".tr,
          videoCameraImage: ImageConstant.imgUserOnerrorcontainer,
        ),
        SizedBox(height: 18.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                "lbl_credits".tr,
                style: CustomTextStyles.titleMedium_1,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSettingsBlack90022x22,
              height: 22.adaptSize,
              width: 22.adaptSize,
            ),
          ],
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildFeedback(
    BuildContext context, {
    required String feedbackText,
    required String videoCameraImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Text(
            feedbackText,
            style: CustomTextStyles.titleMedium_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: videoCameraImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
