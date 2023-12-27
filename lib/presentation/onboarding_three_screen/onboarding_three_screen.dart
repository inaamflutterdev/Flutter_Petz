import 'models/onboarding_three_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/onboarding_three_provider.dart';

class OnboardingThreeScreen extends StatefulWidget {
  const OnboardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingThreeScreenState createState() => OnboardingThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingThreeProvider(),
      child: OnboardingThreeScreen(),
    );
  }
}

class OnboardingThreeScreenState extends State<OnboardingThreeScreen> {
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
                imagePath: ImageConstant.imgPicture31,
                height: 300.v,
                width: 190.h,
              ),
              SizedBox(height: 50.v),
              CustomImageView(
                imagePath: ImageConstant.imgSliderBarPrimary1x160,
                height: 1.v,
                width: 160.h,
              ),
              SizedBox(height: 35.v),
              Container(
                width: 290.h,
                margin: EdgeInsets.only(
                  left: 28.h,
                  right: 18.h,
                ),
                child: Text(
                  "msg_comperhensive_pet".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.53,
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              Text(
                "msg_no_only_an_id_a".tr,
                style: CustomTextStyles.bodyMediumErrorContainer13,
              ),
              Spacer(),
              _buildRowSpacer(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowSpacer(BuildContext context) {
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
