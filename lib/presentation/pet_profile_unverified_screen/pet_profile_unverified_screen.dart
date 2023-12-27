import 'models/pet_profile_unverified_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_button.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/pet_profile_unverified_provider.dart';

class PetProfileUnverifiedScreen extends StatefulWidget {
  const PetProfileUnverifiedScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfileUnverifiedScreenState createState() =>
      PetProfileUnverifiedScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfileUnverifiedProvider(),
      child: PetProfileUnverifiedScreen(),
    );
  }
}

class PetProfileUnverifiedScreenState
    extends State<PetProfileUnverifiedScreen> {
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 30.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        _buildDurationRow(context),
                        SizedBox(height: 17.v),
                        CustomElevatedButton(
                          text: "lbl_medical_card".tr,
                          buttonTextStyle: theme.textTheme.titleMedium!,
                        ),
                        SizedBox(height: 24.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33890,
                          height: 22.v,
                          width: 310.h,
                        ),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33882,
                          height: 28.v,
                          width: 310.h,
                        ),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33881,
                          height: 24.v,
                          width: 310.h,
                        ),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33877,
                          height: 28.v,
                          width: 309.h,
                        ),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33888,
                          height: 24.v,
                          width: 310.h,
                        ),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33880,
                          height: 24.v,
                          width: 310.h,
                        ),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33886,
                          height: 21.v,
                          width: 310.h,
                        ),
                        SizedBox(height: 20.v),
                        _buildFrameRow(context),
                        SizedBox(height: 20.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame33889,
                          height: 24.v,
                          width: 310.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
        AppbarTrailingButton(
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 3.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildDurationRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 149.h,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 1.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_maylo2".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                TextSpan(
                  text: "msg_2_years_old_male".tr,
                  style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                    height: 1.71,
                  ),
                ),
                TextSpan(
                  text: "lbl_n_a2".tr,
                  style: CustomTextStyles.titleSmallBlack900_3,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup3654,
          height: 128.adaptSize,
          width: 128.adaptSize,
          margin: EdgeInsets.only(left: 37.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPrivacySettings,
            height: 15.v,
            width: 124.h,
            margin: EdgeInsets.symmetric(vertical: 4.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCheckmarkOnerrorcontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
