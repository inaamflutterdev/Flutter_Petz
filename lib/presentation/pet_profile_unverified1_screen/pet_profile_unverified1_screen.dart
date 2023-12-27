import 'models/pet_profile_unverified1_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_checkbox_button.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/pet_profile_unverified1_provider.dart';

class PetProfileUnverified1Screen extends StatefulWidget {
  const PetProfileUnverified1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfileUnverified1ScreenState createState() =>
      PetProfileUnverified1ScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfileUnverified1Provider(),
      child: PetProfileUnverified1Screen(),
    );
  }
}

class PetProfileUnverified1ScreenState
    extends State<PetProfileUnverified1Screen> {
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
              SizedBox(height: 26.v),
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
                        SizedBox(height: 18.v),
                        CustomElevatedButton(
                          text: "lbl_medical_card".tr,
                          buttonTextStyle: theme.textTheme.titleMedium!,
                        ),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildHistoryRow(
                            context,
                            historyText: "lbl_report_lost".tr,
                            clockImage: ImageConstant.imgSettingsBlack90022x24,
                          ),
                        ),
                        SizedBox(height: 22.v),
                        _buildPetProfileRow(context),
                        SizedBox(height: 23.v),
                        _buildGalleryRow(context),
                        SizedBox(height: 22.v),
                        _buildDocumentsRow(context),
                        SizedBox(height: 24.v),
                        _buildEmergencyContactsRow(context),
                        SizedBox(height: 24.v),
                        _buildAddressesRow(context),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(right: 6.h),
                          child: _buildHistoryRow(
                            context,
                            historyText: "lbl_history".tr,
                            clockImage: ImageConstant.imgClock,
                          ),
                        ),
                        SizedBox(height: 24.v),
                        _buildPrivacySettingsCheckBox(context),
                        SizedBox(height: 24.v),
                        _buildDeletePetRow(context),
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
        AppbarTitle(
          text: "lbl_verified".tr,
          margin: EdgeInsets.only(
            left: 33.h,
            top: 18.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCheckmarkBlack900,
          margin: EdgeInsets.fromLTRB(1.h, 18.v, 49.h, 1.v),
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
          width: 155.h,
          margin: EdgeInsets.only(
            top: 4.v,
            bottom: 1.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_mish2".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                TextSpan(
                  text: "msg_2_years_old_male2".tr,
                  style: CustomTextStyles.bodyMediumBlack900_1.copyWith(
                    height: 1.71,
                  ),
                ),
                TextSpan(
                  text: "lbl_id201994973".tr,
                  style: CustomTextStyles.titleSmallBlack900_3,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Container(
          height: 128.adaptSize,
          width: 128.adaptSize,
          margin: EdgeInsets.only(left: 31.h),
          decoration: BoxDecoration(
            color: appTheme.blueGray10001,
            borderRadius: BorderRadius.circular(
              64.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPetProfileRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_pet_profile".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserBlueGray10001,
            height: 28.adaptSize,
            width: 28.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGalleryRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_gallery".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgClock,
            height: 24.v,
            width: 26.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDocumentsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_documents2".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFileBlack900,
            height: 28.v,
            width: 22.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmergencyContactsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "msg_emergency_contacts".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlack900,
            height: 24.v,
            width: 29.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_addresses".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPrivacySettingsCheckBox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Selector<PetProfileUnverified1Provider, bool?>(
        selector: (
          context,
          provider,
        ) =>
            provider.privacySettingsCheckBox,
        builder: (context, privacySettingsCheckBox, child) {
          return CustomCheckboxButton(
            width: 309.h,
            text: "msg_privacy_settings".tr,
            value: privacySettingsCheckBox,
            textStyle: CustomTextStyles.titleMedium_1,
            isRightCheck: true,
            onChange: (value) {
              context
                  .read<PetProfileUnverified1Provider>()
                  .changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDeletePetRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_delete_pet".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpBlack90024x20,
            height: 24.v,
            width: 20.h,
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

  /// Common widget
  Widget _buildHistoryRow(
    BuildContext context, {
    required String historyText,
    required String clockImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            historyText,
            style: CustomTextStyles.titleMedium_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: clockImage,
          height: 21.v,
          width: 24.h,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
      ],
    );
  }
}
