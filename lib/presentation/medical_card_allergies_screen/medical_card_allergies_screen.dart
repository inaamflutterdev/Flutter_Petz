import '../medical_card_allergies_screen/widgets/dynamictext_item_widget.dart';
import 'models/dynamictext_item_model.dart';
import 'models/medical_card_allergies_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/medical_card_allergies_provider.dart';

class MedicalCardAllergiesScreen extends StatefulWidget {
  const MedicalCardAllergiesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MedicalCardAllergiesScreenState createState() =>
      MedicalCardAllergiesScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalCardAllergiesProvider(),
      child: MedicalCardAllergiesScreen(),
    );
  }
}

class MedicalCardAllergiesScreenState
    extends State<MedicalCardAllergiesScreen> {
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
                    "msg_pet_name_s_allergies".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                width: 308.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  right: 8.h,
                ),
                child: Text(
                  "msg_having_an_allergic".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildButtonRow(context),
              SizedBox(height: 20.v),
              _buildSubstanceUsesYourColumn(context),
              Spacer(),
              SizedBox(height: 5.v),
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
          imagePath: ImageConstant.imgCalculator,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButtonRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6.h),
      decoration: AppDecoration.outlineIndigo60014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50.v,
            width: 261.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 14.v,
                    ),
                    child: Text(
                      "msg_total_vaccination".tr,
                      style: CustomTextStyles.titleMediumUrbanistWhiteA700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 261.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.outlineIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR100,
                    ),
                    child: Text(
                      "lbl_total_allergies".tr,
                      style: CustomTextStyles.titleMediumUrbanistWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: Text(
              "lbl_2".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSubstanceUsesYourColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "msg_tap_to_see_details".tr,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ),
          SizedBox(height: 14.v),
          Consumer<MedicalCardAllergiesProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 18.v,
                  );
                },
                itemCount: provider
                    .medicalCardAllergiesModelObj.dynamictextItemList.length,
                itemBuilder: (context, index) {
                  DynamictextItemModel model = provider
                      .medicalCardAllergiesModelObj.dynamictextItemList[index];
                  return DynamictextItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 99.h,
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
              "msg_add_new_allergie".tr,
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
