import 'models/sign_up_1_onboarding_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/sign_up_1_onboarding_seven_provider.dart';

class SignUp1OnboardingSevenScreen extends StatefulWidget {
  const SignUp1OnboardingSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUp1OnboardingSevenScreenState createState() =>
      SignUp1OnboardingSevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUp1OnboardingSevenProvider(),
      child: SignUp1OnboardingSevenScreen(),
    );
  }
}

class SignUp1OnboardingSevenScreenState
    extends State<SignUp1OnboardingSevenScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 40.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCanSneak1,
                height: 153.v,
                width: 137.h,
                alignment: Alignment.centerRight,
              ),
              SizedBox(height: 59.v),
              Text(
                "msg_more_coming_soon".tr,
                style: CustomTextStyles.headlineLargePrimary,
              ),
              SizedBox(height: 24.v),
              Text(
                "msg_perks_discounts".tr,
                style: CustomTextStyles.bodyMediumErrorContainer13,
              ),
              SizedBox(height: 73.v),
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
                buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
              ),
              SizedBox(height: 33.v),
              Text(
                "lbl_go_back".tr,
                style: theme.textTheme.bodyMedium!.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
