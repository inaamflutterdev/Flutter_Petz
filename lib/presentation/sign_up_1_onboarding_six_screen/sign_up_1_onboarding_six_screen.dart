import 'models/sign_up_1_onboarding_six_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/sign_up_1_onboarding_six_provider.dart';

class SignUp1OnboardingSixScreen extends StatefulWidget {
  const SignUp1OnboardingSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUp1OnboardingSixScreenState createState() =>
      SignUp1OnboardingSixScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUp1OnboardingSixProvider(),
      child: SignUp1OnboardingSixScreen(),
    );
  }
}

class SignUp1OnboardingSixScreenState
    extends State<SignUp1OnboardingSixScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 25.v),
          child: Column(
            children: [
              _buildWelcomeToYourRow(context),
              SizedBox(height: 21.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlack900,
                height: 107.v,
                width: 313.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 17.h),
              ),
              SizedBox(height: 55.v),
              CustomImageView(
                imagePath: ImageConstant.imgSliderBarBlack900,
                height: 1.v,
                width: 160.h,
              ),
              SizedBox(height: 83.v),
              CustomElevatedButton(
                height: 45.v,
                text: "msg_continue_with_google".tr,
                margin: EdgeInsets.only(
                  left: 38.h,
                  right: 37.h,
                ),
                buttonStyle: CustomButtonStyles.fillWhiteA,
                buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
              ),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                height: 45.v,
                text: "msg_continue_with_apple".tr,
                margin: EdgeInsets.only(
                  left: 38.h,
                  right: 37.h,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 22.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 19.v,
                    width: 16.h,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillGray,
                buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1,
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_or".tr,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 7.v),
              CustomElevatedButton(
                height: 45.v,
                text: "msg_continue_with_email".tr,
                margin: EdgeInsets.only(
                  left: 38.h,
                  right: 37.h,
                ),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 20.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMail,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
              ),
              SizedBox(height: 33.v),
              Text(
                "lbl_go_back".tr,
                style: theme.textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeToYourRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 44.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 182.h,
              child: Text(
                "msg_welcome_to_your".tr,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.displayMedium,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgCanSneak2,
              height: 153.v,
              width: 132.h,
              margin: EdgeInsets.only(
                left: 16.h,
                top: 20.v,
                bottom: 22.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
