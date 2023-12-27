import 'models/privacy_settings1_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/privacy_settings1_provider.dart';

class PrivacySettings1Screen extends StatefulWidget {
  const PrivacySettings1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacySettings1ScreenState createState() => PrivacySettings1ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacySettings1Provider(),
      child: PrivacySettings1Screen(),
    );
  }
}

class PrivacySettings1ScreenState extends State<PrivacySettings1Screen> {
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
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 22.v),
              Text(
                "msg_pet_name_s_privacy".tr,
                style: CustomTextStyles.titleMedium_1,
              ),
              SizedBox(height: 3.v),
              Container(
                width: 294.h,
                margin: EdgeInsets.only(right: 20.h),
                child: Text(
                  "msg_you_can_control".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              Text(
                "lbl_profile".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 12.v),
              Text(
                "msg_emergency_contacts".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 9.v),
              Text(
                "lbl_medical_card".tr,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 11.v),
              Text(
                "msg_documents_files".tr,
                style: theme.textTheme.titleMedium,
              ),
              Spacer(),
              _buildFrameTwentySix(context),
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
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgGroupBlack900,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCheckmarkOnerrorcontainer36x36,
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameTwentySix(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgVideoCamera24x24,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgPlus,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSettingsBlack90024x20,
          height: 24.v,
          width: 20.h,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSearchOnprimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
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
}
