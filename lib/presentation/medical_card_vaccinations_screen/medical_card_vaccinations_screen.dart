import '../medical_card_vaccinations_screen/widgets/userprofile7_item_widget.dart';
import 'models/medical_card_vaccinations_model.dart';
import 'models/userprofile7_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/medical_card_vaccinations_provider.dart';

class MedicalCardVaccinationsScreen extends StatefulWidget {
  const MedicalCardVaccinationsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MedicalCardVaccinationsScreenState createState() =>
      MedicalCardVaccinationsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalCardVaccinationsProvider(),
      child: MedicalCardVaccinationsScreen(),
    );
  }
}

class MedicalCardVaccinationsScreenState
    extends State<MedicalCardVaccinationsScreen> {
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
                    "msg_pet_name_s_vaccinations".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Container(
                width: 307.h,
                margin: EdgeInsets.only(
                  left: 3.h,
                  right: 9.h,
                ),
                child: Text(
                  "msg_enter_any_vaccinations".tr,
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
              _buildSubstanceUsesYour(context),
              Spacer(),
              SizedBox(height: 5.v),
              _buildFrame(context),
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
          imagePath: ImageConstant.imgGroupBlack90027x28,
          margin: EdgeInsets.fromLTRB(27.h, 10.v, 27.h, 11.v),
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
                      horizontal: 24.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.outlineIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR100,
                    ),
                    child: Text(
                      "msg_total_vaccination".tr,
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
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Consumer<MedicalCardVaccinationsProvider>(
              builder: (context, provider, child) {
                return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      height: 11.v,
                    );
                  },
                  itemCount: provider.medicalCardVaccinationsModelObj
                      .userprofile7ItemList.length,
                  itemBuilder: (context, index) {
                    Userprofile7ItemModel model = provider
                        .medicalCardVaccinationsModelObj
                        .userprofile7ItemList[index];
                    return Userprofile7ItemWidget(
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
          horizontal: 85.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "msg_add_new_vaccination".tr,
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
