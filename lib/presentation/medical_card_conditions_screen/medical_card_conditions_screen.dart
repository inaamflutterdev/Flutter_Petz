import '../medical_card_conditions_screen/widgets/blindinlefteye_item_widget.dart';
import 'models/blindinlefteye_item_model.dart';
import 'models/medical_card_conditions_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/medical_card_conditions_provider.dart';

class MedicalCardConditionsScreen extends StatefulWidget {
  const MedicalCardConditionsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MedicalCardConditionsScreenState createState() =>
      MedicalCardConditionsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalCardConditionsProvider(),
      child: MedicalCardConditionsScreen(),
    );
  }
}

class MedicalCardConditionsScreenState
    extends State<MedicalCardConditionsScreen> {
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
            horizontal: 27.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "msg_pet_name_s_conditions".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                width: 315.h,
                margin: EdgeInsets.only(left: 3.h),
                child: Text(
                  "msg_past_or_present".tr,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              _buildTotalVaccination(context),
              SizedBox(height: 29.v),
              _buildVaccination(context),
              SizedBox(height: 31.v),
              _buildSubstanceUsesYour(context),
              SizedBox(height: 84.v),
              _buildFrame(context),
              SizedBox(height: 5.v),
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
          imagePath: ImageConstant.imgGroupBlack90028x28,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTotalVaccination(BuildContext context) {
    return SizedBox(
      height: 50.v,
      width: 316.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineIndigo60014.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      "msg_total_vaccination".tr,
                      style: CustomTextStyles.titleMediumUrbanistWhiteA700,
                    ),
                  ),
                  Text(
                    "lbl_2".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 29.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.customBorderLR100,
              ),
              child: Text(
                "msg_total_conditions".tr,
                style: CustomTextStyles.titleMediumUrbanistWhiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVaccination(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 8.v,
            ),
            child: Text(
              "msg_neutered_spayed".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          CustomElevatedButton(
            height: 40.v,
            width: 60.h,
            text: "lbl_no".tr,
            buttonTextStyle: CustomTextStyles.titleSmallMedium_1,
          ),
          CustomElevatedButton(
            height: 40.v,
            width: 60.h,
            text: "lbl_yes".tr,
            margin: EdgeInsets.only(left: 15.h),
            buttonStyle: CustomButtonStyles.outlineBlackBL101,
            buttonTextStyle: CustomTextStyles.titleSmallMedium_1,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubstanceUsesYour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "msg_tap_to_see_details".tr,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Consumer<MedicalCardConditionsProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 13.v,
                    );
                  },
                  itemCount: provider.medicalCardConditionsModelObj
                      .blindinlefteyeItemList.length,
                  itemBuilder: (context, index) {
                    BlindinlefteyeItemModel model = provider
                        .medicalCardConditionsModelObj
                        .blindinlefteyeItemList[index];
                    return BlindinlefteyeItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 91.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "msg_add_new_condition".tr,
          style: CustomTextStyles.titleSmallGray900,
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
