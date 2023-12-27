import 'models/pets_id_sets_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/pets_id_sets_provider.dart';

class PetsIdSetsScreen extends StatefulWidget {
  const PetsIdSetsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PetsIdSetsScreenState createState() => PetsIdSetsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetsIdSetsProvider(),
      child: PetsIdSetsScreen(),
    );
  }
}

class PetsIdSetsScreenState extends State<PetsIdSetsScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 17.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_pets_id_identification".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 3.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_you_can_see_your".tr,
                  style: CustomTextStyles.bodySmallErrorContainer,
                ),
              ),
              SizedBox(height: 17.v),
              _buildButtonColumn(context),
              SizedBox(height: 14.v),
              _buildThirtyThreeRow(context),
              Spacer(),
              SizedBox(height: 11.v),
              _buildFrameColumn(context),
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
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPrinter,
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 34.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.outlineIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "msg_you_have_unverified".tr,
            style: CustomTextStyles.titleSmallUrbanistWhiteA700,
          ),
          SizedBox(height: 7.v),
          CustomElevatedButton(
            height: 36.v,
            text: "msg_buy_identification".tr,
            margin: EdgeInsets.symmetric(horizontal: 37.h),
            buttonStyle: CustomButtonStyles.fillPrimaryTL18,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyThreeRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_0idmfsl7031".tr,
                  style: CustomTextStyles.titleSmallBlack900_2,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_mish".tr,
                  style: CustomTextStyles.titleMediumOnErrorContainer_1,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack90024x22,
            height: 24.v,
            width: 22.h,
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 11.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 80.h,
          vertical: 14.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Text(
              "msg_add_verify_pet_id".tr,
              style: CustomTextStyles.titleSmallGray900,
            ),
          ],
        ),
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
