import 'models/onboarding_one_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/onboarding_one_provider.dart';

class OnboardingOneScreen extends StatefulWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingOneScreenState createState() => OnboardingOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingOneProvider(),
      child: OnboardingOneScreen(),
    );
  }
}

class OnboardingOneScreenState extends State<OnboardingOneScreen> {
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
            horizontal: 28.h,
            vertical: 30.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 26.v),
              CustomImageView(
                imagePath: ImageConstant.imgMing1,
                height: 300.v,
                width: 178.h,
              ),
              SizedBox(height: 50.v),
              CustomImageView(
                imagePath: ImageConstant.imgSliderBar,
                height: 1.v,
                width: 160.h,
              ),
              SizedBox(height: 41.v),
              SizedBox(
                width: 172.h,
                child: Text(
                  "msg_universal_pet_identity".tr,
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
                width: 165.h,
                child: Text(
                  "msg_verified_digital".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumErrorContainer13.copyWith(
                    height: 1.85,
                  ),
                ),
              ),
              SizedBox(height: 81.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
