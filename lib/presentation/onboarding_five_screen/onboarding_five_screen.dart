import 'models/onboarding_five_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/onboarding_five_provider.dart';

class OnboardingFiveScreen extends StatefulWidget {
  const OnboardingFiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingFiveScreenState createState() => OnboardingFiveScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingFiveProvider(),
      child: OnboardingFiveScreen(),
    );
  }
}

class OnboardingFiveScreenState extends State<OnboardingFiveScreen> {
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
                imagePath: ImageConstant.imgSlide11,
                height: 300.adaptSize,
                width: 300.adaptSize,
              ),
              SizedBox(height: 50.v),
              CustomImageView(
                imagePath: ImageConstant.imgSliderBar1,
                height: 1.v,
                width: 160.h,
              ),
              SizedBox(height: 28.v),
              SizedBox(
                width: 226.h,
                child: Text(
                  "msg_contribution_to".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.53,
                  ),
                ),
              ),
              SizedBox(height: 19.v),
              SizedBox(
                width: 189.h,
                child: Text(
                  "msg_support_other_animals".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumErrorContainer13.copyWith(
                    height: 1.85,
                  ),
                ),
              ),
              SizedBox(height: 70.v),
              _buildOnboardingSpacer(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingSpacer(BuildContext context) {
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
              top: 18.v,
              bottom: 13.v,
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
