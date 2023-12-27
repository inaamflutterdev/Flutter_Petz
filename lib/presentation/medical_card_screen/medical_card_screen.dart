import 'models/medical_card_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/medical_card_provider.dart';

class MedicalCardScreen extends StatefulWidget {
  const MedicalCardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MedicalCardScreenState createState() => MedicalCardScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalCardProvider(),
      child: MedicalCardScreen(),
    );
  }
}

class MedicalCardScreenState extends State<MedicalCardScreen> {
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
            horizontal: 25.h,
            vertical: 27.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "msg_pet_name_s_medical".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "lbl_app_settings".tr,
                    style: CustomTextStyles.bodySmallErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildVaccinationRow(context),
              SizedBox(height: 22.v),
              _buildFieldColumn(context),
              SizedBox(height: 17.v),
              _buildVeterinaryDrAlexRow(context),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 5.h,
                ),
                child: _buildConditionsRow(
                  context,
                  conditionsText: "lbl_vaccinations2".tr,
                  groupImage: ImageConstant.imgGroupBlack90027x28,
                ),
              ),
              SizedBox(height: 22.v),
              _buildProceduresRow(context),
              SizedBox(height: 24.v),
              _buildAllergiesRow(context),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.h,
                  right: 5.h,
                ),
                child: _buildConditionsRow(
                  context,
                  conditionsText: "lbl_conditions2".tr,
                  groupImage: ImageConstant.imgGroupBlack90028x28,
                ),
              ),
              SizedBox(height: 22.v),
              _buildMedicationsRow(context),
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
      height: 67.v,
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupBlack900,
        margin: EdgeInsets.fromLTRB(44.h, 13.v, 306.h, 13.v),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildVaccinationRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 8.v,
            ),
            child: Text(
              "lbl_microchip2".tr,
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
  Widget _buildFieldColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_microchip_number".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 14.v),
          Selector<MedicalCardProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.exCounterController,
            builder: (context, exCounterController, child) {
              return CustomTextFormField(
                controller: exCounterController,
                hintText: "msg_ex_900123456789101".tr,
                hintStyle: CustomTextStyles.bodyMediumPrimaryContainer,
                textInputAction: TextInputAction.done,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVeterinaryDrAlexRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.h),
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100.h,
            margin: EdgeInsets.only(top: 6.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_veterinary".tr,
                    style: CustomTextStyles.titleMediumOnErrorContainer,
                  ),
                  TextSpan(
                    text: "lbl_dr_alex_burke".tr,
                    style: CustomTextStyles.bodyLargeOnErrorContainer,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack90024x22,
            height: 24.v,
            width: 22.h,
            margin: EdgeInsets.only(
              left: 175.h,
              top: 15.v,
              bottom: 14.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProceduresRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_procedures2".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroupBlack90028x26,
            height: 28.v,
            width: 26.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAllergiesRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Text(
              "lbl_allergies2".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCalculator,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMedicationsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 5.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_medications2".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTrophy,
            height: 28.v,
            width: 25.h,
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
  Widget _buildConditionsRow(
    BuildContext context, {
    required String conditionsText,
    required String groupImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 4.v,
            bottom: 2.v,
          ),
          child: Text(
            conditionsText,
            style: CustomTextStyles.titleMedium_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: groupImage,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
      ],
    );
  }
}
