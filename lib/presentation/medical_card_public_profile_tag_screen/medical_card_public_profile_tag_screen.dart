import 'models/medical_card_public_profile_tag_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_drop_down.dart';
import 'provider/medical_card_public_profile_tag_provider.dart';

class MedicalCardPublicProfileTagScreen extends StatefulWidget {
  const MedicalCardPublicProfileTagScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MedicalCardPublicProfileTagScreenState createState() =>
      MedicalCardPublicProfileTagScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalCardPublicProfileTagProvider(),
      child: MedicalCardPublicProfileTagScreen(),
    );
  }
}

class MedicalCardPublicProfileTagScreenState
    extends State<MedicalCardPublicProfileTagScreen> {
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
            horizontal: 28.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: Text(
                  "msg_pet_name_s_medical2".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "msg_age_gender_breed".tr,
                  style: CustomTextStyles.bodyMediumBlack900_2,
                ),
              ),
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "msg_microchip_number".tr,
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
              SizedBox(height: 4.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkBlack90015x21,
                      height: 15.v,
                      width: 21.h,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "lbl_900023846482928".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "lbl_sterlization".tr,
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseBlack900,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15.h),
                      child: Text(
                        "lbl_not_sterilized".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 22.v),
              _buildTotalVaccination(context),
              SizedBox(height: 16.v),
              _buildRabies(context),
              SizedBox(height: 16.v),
              _buildButton2(context),
              SizedBox(height: 31.v),
              _buildTotalVaccination1(context),
              SizedBox(height: 31.v),
              _buildTotalVaccination2(context),
              SizedBox(height: 31.v),
              _buildButton5(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
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
      title: AppbarSubtitle(
        text: "lbl_back_button".tr,
        margin: EdgeInsets.only(left: 87.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVector36x36,
          margin: EdgeInsets.fromLTRB(28.h, 16.v, 28.h, 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTotalVaccination(BuildContext context) {
    return Container(
      height: 50.v,
      width: 317.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildButton(
              context,
              totalVaccinationText: "msg_total_vaccination".tr,
              twoText: "lbl_2".tr,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.only(right: 56.h),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.customBorderLR100,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "msg_total_vaccination".tr,
                      style: CustomTextStyles.titleMediumUrbanistWhiteA700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowUp,
                    height: 15.v,
                    width: 27.h,
                    margin: EdgeInsets.only(
                      left: 47.h,
                      top: 2.v,
                      bottom: 3.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRabies(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_rabies".tr,
                  style: CustomTextStyles.titleSmallBlack900_2,
                ),
                SizedBox(height: 7.v),
                Text(
                  "msg_by_satya_gunawan".tr,
                  style: CustomTextStyles.bodySmallOnErrorContainer_1,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "lbl_2022_july_25".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCalendarBlack900,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 5.h),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.v),
                        child: Text(
                          "lbl_jakarta_id".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgLinkedin,
                        height: 18.v,
                        width: 13.h,
                        margin: EdgeInsets.only(left: 7.h),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton2(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.outlineIndigo60014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
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
                Selector<MedicalCardPublicProfileTagProvider,
                    MedicalCardPublicProfileTagModel?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.medicalCardPublicProfileTagModelObj,
                  builder:
                      (context, medicalCardPublicProfileTagModelObj, child) {
                    return CustomDropDown(
                      width: 261.h,
                      icon: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 16.v,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownWhiteA700,
                          height: 15.v,
                          width: 27.h,
                        ),
                      ),
                      hintText: "msg_total_procedures".tr,
                      alignment: Alignment.center,
                      items: medicalCardPublicProfileTagModelObj
                              ?.dropdownItemList ??
                          [],
                      onChanged: (value) {
                        context
                            .read<MedicalCardPublicProfileTagProvider>()
                            .onSelected(value);
                      },
                    );
                  },
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
  Widget _buildTotalVaccination1(BuildContext context) {
    return Container(
      height: 50.v,
      width: 316.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildButton(
              context,
              totalVaccinationText: "msg_total_vaccination".tr,
              twoText: "lbl_2".tr,
            ),
          ),
          Selector<MedicalCardPublicProfileTagProvider,
              MedicalCardPublicProfileTagModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.medicalCardPublicProfileTagModelObj,
            builder: (context, medicalCardPublicProfileTagModelObj, child) {
              return CustomDropDown(
                width: 261.h,
                icon: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 16.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdownWhiteA700,
                    height: 15.v,
                    width: 27.h,
                  ),
                ),
                hintText: "msg_total_medication".tr,
                alignment: Alignment.centerLeft,
                items: medicalCardPublicProfileTagModelObj?.dropdownItemList1 ??
                    [],
                onChanged: (value) {
                  context
                      .read<MedicalCardPublicProfileTagProvider>()
                      .onSelected1(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalVaccination2(BuildContext context) {
    return Container(
      height: 50.v,
      width: 316.h,
      margin: EdgeInsets.only(left: 2.h),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildButton(
              context,
              totalVaccinationText: "msg_total_vaccination".tr,
              twoText: "lbl_2".tr,
            ),
          ),
          Selector<MedicalCardPublicProfileTagProvider,
              MedicalCardPublicProfileTagModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.medicalCardPublicProfileTagModelObj,
            builder: (context, medicalCardPublicProfileTagModelObj, child) {
              return CustomDropDown(
                width: 261.h,
                icon: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 17.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdownWhiteA700,
                    height: 15.v,
                    width: 27.h,
                  ),
                ),
                hintText: "msg_total_conditions".tr,
                alignment: Alignment.centerLeft,
                items: medicalCardPublicProfileTagModelObj?.dropdownItemList2 ??
                    [],
                onChanged: (value) {
                  context
                      .read<MedicalCardPublicProfileTagProvider>()
                      .onSelected2(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButton5(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.outlineIndigo60014.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
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
                Selector<MedicalCardPublicProfileTagProvider,
                    MedicalCardPublicProfileTagModel?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.medicalCardPublicProfileTagModelObj,
                  builder:
                      (context, medicalCardPublicProfileTagModelObj, child) {
                    return CustomDropDown(
                      width: 261.h,
                      icon: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 15.v,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdownWhiteA700,
                          height: 15.v,
                          width: 27.h,
                        ),
                      ),
                      hintText: "lbl_total_allergies".tr,
                      alignment: Alignment.center,
                      items: medicalCardPublicProfileTagModelObj
                              ?.dropdownItemList3 ??
                          [],
                      onChanged: (value) {
                        context
                            .read<MedicalCardPublicProfileTagProvider>()
                            .onSelected3(value);
                      },
                    );
                  },
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

  /// Common widget
  Widget _buildButton(
    BuildContext context, {
    required String totalVaccinationText,
    required String twoText,
  }) {
    return Container(
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
              totalVaccinationText,
              style: CustomTextStyles.titleMediumUrbanistWhiteA700.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Text(
            twoText,
            style: CustomTextStyles.titleMediumBold.copyWith(
              color: appTheme.black900,
            ),
          ),
        ],
      ),
    );
  }
}
