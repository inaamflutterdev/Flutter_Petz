import 'models/medical_card_medication_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/medical_card_medication_provider.dart';

class MedicalCardMedicationScreen extends StatefulWidget {
  const MedicalCardMedicationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MedicalCardMedicationScreenState createState() =>
      MedicalCardMedicationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalCardMedicationProvider(),
      child: MedicalCardMedicationScreen(),
    );
  }
}

class MedicalCardMedicationScreenState
    extends State<MedicalCardMedicationScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                    "msg_pet_name_s_medication".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 286.h,
                  margin: EdgeInsets.only(
                    left: 3.h,
                    right: 30.h,
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
              ),
              SizedBox(height: 16.v),
              _buildVaccinationButton(context),
              SizedBox(height: 20.v),
              _buildUserDetailsColumn(context),
              Spacer(),
              SizedBox(height: 5.v),
              _buildAddNewMedicationColumn(context),
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
          imagePath: ImageConstant.imgTrophy,
          margin: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVaccinationButton(BuildContext context) {
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
                      horizontal: 26.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.outlineIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR100,
                    ),
                    child: Text(
                      "msg_total_medication".tr,
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
  Widget _buildUserDetailsColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "msg_tap_to_see_details".tr,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ),
          SizedBox(height: 17.v),
          Selector<MedicalCardMedicationProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.thumbsupController,
            builder: (context, thumbsupController, child) {
              return CustomTextFormField(
                controller: thumbsupController,
                hintText: "lbl_asprin".tr,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 8.v, 18.h, 8.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlack90024x20,
                    height: 24.v,
                    width: 20.h,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 40.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 19.h,
                  top: 11.v,
                  bottom: 11.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                filled: true,
                fillColor: appTheme.indigo50,
              );
            },
          ),
          SizedBox(height: 18.v),
          Selector<MedicalCardMedicationProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.thumbsupController1,
            builder: (context, thumbsupController1, child) {
              return CustomTextFormField(
                controller: thumbsupController1,
                hintText: "lbl_previcox".tr,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 9.v, 18.h, 7.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlack90024x20,
                    height: 24.v,
                    width: 20.h,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 40.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 21.h,
                  top: 11.v,
                  bottom: 11.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillIndigo,
                filled: true,
                fillColor: appTheme.indigo50,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddNewMedicationColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 3.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 87.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "msg_add_new_medication".tr,
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
