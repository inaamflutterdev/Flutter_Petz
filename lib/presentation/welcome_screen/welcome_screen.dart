import 'models/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/welcome_provider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WelcomeProvider(),
      child: WelcomeScreen(),
    );
  }
}

class WelcomeScreenState extends State<WelcomeScreen> {
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
          padding: EdgeInsets.symmetric(vertical: 33.v),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTogether,
                height: 222.adaptSize,
                width: 222.adaptSize,
              ),
              SizedBox(height: 39.v),
              SizedBox(
                width: 229.h,
                child: Text(
                  "msg_welcome_to_your2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineMedium!.copyWith(
                    height: 1.70,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Text(
                "msg_your_pet_is_about".tr,
                style: CustomTextStyles.bodyMediumErrorContainer,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildLetsStart(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupBlack900,
        margin: EdgeInsets.fromLTRB(41.h, 13.v, 310.h, 13.v),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildLetsStart(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_let_s_start".tr,
      margin: EdgeInsets.only(
        left: 30.h,
        right: 30.h,
        bottom: 42.v,
      ),
      buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
    );
  }
}
