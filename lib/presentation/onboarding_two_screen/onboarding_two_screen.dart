import 'models/onboarding_two_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/onboarding_two_provider.dart';

class OnboardingTwoScreen extends StatefulWidget {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingTwoScreenState createState() => OnboardingTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingTwoProvider(),
      child: OnboardingTwoScreen(),
    );
  }
}

class OnboardingTwoScreenState extends State<OnboardingTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 26.v),
              CustomImageView(
                imagePath: ImageConstant.imgKit3,
                height: 300.adaptSize,
                width: 300.adaptSize,
              ),
              SizedBox(height: 50.v),
              CustomImageView(
                imagePath: ImageConstant.imgSliderBarPrimary,
                height: 1.v,
                width: 160.h,
              ),
              SizedBox(height: 37.v),
              Container(
                width: 280.h,
                margin: EdgeInsets.symmetric(horizontal: 28.h),
                child: Text(
                  "msg_complete_lost_and".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.53,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              Container(
                width: 286.h,
                margin: EdgeInsets.only(
                  left: 26.h,
                  right: 24.h,
                ),
                child: Text(
                  "msg_easy_reunification".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumErrorContainer13.copyWith(
                    height: 1.85,
                  ),
                ),
              ),
              SizedBox(height: 59.v),
              _buildSpacer(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSpacer(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50.v,
            width: 56.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroupBlack900,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Spacer(
            flex: 46,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 24.v,
              bottom: 7.v,
            ),
            child: Text(
              "lbl_skip".tr,
              style: theme.textTheme.bodyMedium!.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Spacer(
            flex: 53,
          ),
          Container(
            height: 50.v,
            width: 56.h,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL10,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
