import 'models/onboarding_four_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_icon_button.dart';
import 'provider/onboarding_four_provider.dart';

class OnboardingFourScreen extends StatefulWidget {
  const OnboardingFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingFourScreenState createState() => OnboardingFourScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingFourProvider(),
      child: OnboardingFourScreen(),
    );
  }
}

class OnboardingFourScreenState extends State<OnboardingFourScreen> {
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
                imagePath: ImageConstant.imgCinnamon1,
                height: 300.v,
                width: 196.h,
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 58.h),
              ),
              SizedBox(height: 50.v),
              CustomImageView(
                imagePath: ImageConstant.imgSliderBar1x160,
                height: 1.v,
                width: 160.h,
              ),
              SizedBox(height: 32.v),
              Text(
                "msg_shared_medical_card".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 26.v),
              SizedBox(
                width: 214.h,
                child: Text(
                  "msg_better_and_transparent".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumErrorContainer13.copyWith(
                    height: 1.85,
                  ),
                ),
              ),
              Spacer(),
              _buildOnboardingRow(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOnboardingRow(BuildContext context) {
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
          CustomIconButton(
            height: 50.v,
            width: 56.h,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
            ),
          ),
        ],
      ),
    );
  }
}
