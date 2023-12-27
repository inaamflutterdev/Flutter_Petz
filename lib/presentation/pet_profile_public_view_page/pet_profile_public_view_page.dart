import 'models/pet_profile_public_view_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/pet_profile_public_view_provider.dart';

// ignore_for_file: must_be_immutable
class PetProfilePublicViewPage extends StatefulWidget {
  const PetProfilePublicViewPage({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfilePublicViewPageState createState() =>
      PetProfilePublicViewPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfilePublicViewProvider(),
      child: PetProfilePublicViewPage(),
    );
  }
}

class PetProfilePublicViewPageState extends State<PetProfilePublicViewPage>
    with AutomaticKeepAliveClientMixin<PetProfilePublicViewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _buildScrollView(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBirthdayColumn(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: Text(
                  "lbl_birthday2".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 123.h),
                child: Text(
                  "lbl_breed".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Text(
            "lbl_08_august_2020".tr,
            style: CustomTextStyles.bodySmall_1,
          ),
          SizedBox(height: 5.v),
          Row(
            children: [
              Text(
                "lbl_size".tr,
                style: theme.textTheme.labelLarge,
              ),
              Padding(
                padding: EdgeInsets.only(left: 150.h),
                child: Text(
                  "lbl_color2".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          _buildMediumHairRow(
            context,
            dynamicText1: "lbl_large".tr,
            dynamicText2: "lbl_grey".tr,
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              Text(
                "lbl_coat_type".tr,
                style: theme.textTheme.labelLarge,
              ),
              Padding(
                padding: EdgeInsets.only(left: 114.h),
                child: Text(
                  "lbl_tail_type".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
          _buildMediumHairRow(
            context,
            dynamicText1: "lbl_medium_hair".tr,
            dynamicText2: "lbl_long".tr,
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              Text(
                "lbl_ear_type2".tr,
                style: theme.textTheme.labelLarge,
              ),
              Padding(
                padding: EdgeInsets.only(left: 125.h),
                child: Text(
                  "lbl_weight".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 7.v),
          Row(
            children: [
              Text(
                "lbl_hanging".tr,
                style: CustomTextStyles.bodySmall_1,
              ),
              Padding(
                padding: EdgeInsets.only(left: 125.h),
                child: Text(
                  "lbl_25_kg".tr,
                  style: CustomTextStyles.bodySmall_1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 4.h),
            padding: EdgeInsets.all(25.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 50.adaptSize,
              width: 50.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4.h),
            padding: EdgeInsets.symmetric(
              horizontal: 22.h,
              vertical: 25.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 50.adaptSize,
              width: 50.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray600,
                borderRadius: BorderRadius.circular(
                  25.h,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.all(25.h),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Container(
              height: 50.adaptSize,
              width: 50.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.gray600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(
              left: 25.h,
              right: 32.h,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: 178.v,
                    width: 278.h,
                    margin: EdgeInsets.only(left: 5.h),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 23.v),
                            child: Text(
                              "msg_labrador_retriever".tr,
                              style: CustomTextStyles.bodySmall_1,
                            ),
                          ),
                        ),
                        _buildBirthdayColumn(context),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                Container(
                  margin: EdgeInsets.only(right: 3.h),
                  padding: EdgeInsets.all(5.h),
                  decoration: AppDecoration.fillSecondaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        height: 40.v,
                        width: 150.h,
                        text: "lbl_gallery".tr,
                        buttonStyle: CustomButtonStyles.fillPrimaryTL101,
                        buttonTextStyle: CustomTextStyles.titleSmallBlack900_1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 11.v,
                          right: 55.h,
                          bottom: 10.v,
                        ),
                        child: Text(
                          "lbl_files".tr,
                          style: CustomTextStyles.titleSmallBlack900_1,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.v),
                _buildViewRow(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMediumHairRow(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            dynamicText1,
            style: CustomTextStyles.bodySmall_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 101.h),
          child: Text(
            dynamicText2,
            style: CustomTextStyles.bodySmall_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
      ],
    );
  }
}
