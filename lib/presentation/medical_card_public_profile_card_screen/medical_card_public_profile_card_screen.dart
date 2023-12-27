import '../medical_card_public_profile_card_screen/widgets/vaccinationstats_item_widget.dart';
import 'models/medical_card_public_profile_card_model.dart';
import 'models/vaccinationstats_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'provider/medical_card_public_profile_card_provider.dart';

class MedicalCardPublicProfileCardScreen extends StatefulWidget {
  const MedicalCardPublicProfileCardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MedicalCardPublicProfileCardScreenState createState() =>
      MedicalCardPublicProfileCardScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicalCardPublicProfileCardProvider(),
      child: MedicalCardPublicProfileCardScreen(),
    );
  }
}

class MedicalCardPublicProfileCardScreenState
    extends State<MedicalCardPublicProfileCardScreen> {
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
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCloseBlack900,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 1.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_n_a".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text(
                  "lbl_sterlization".tr,
                  style: CustomTextStyles.titleSmallBold,
                ),
              ),
              SizedBox(height: 6.v),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCheckmarkBlack90015x21,
                      height: 15.v,
                      width: 21.h,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.h),
                      child: Text(
                        "msg_neutered_spayed".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              _buildVaccinationStats(context),
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
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorBlack90036x36,
          margin: EdgeInsets.fromLTRB(28.h, 16.v, 28.h, 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildVaccinationStats(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Consumer<MedicalCardPublicProfileCardProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 31.v,
              );
            },
            itemCount: provider.medicalCardPublicProfileCardModelObj
                .vaccinationstatsItemList.length,
            itemBuilder: (context, index) {
              VaccinationstatsItemModel model = provider
                  .medicalCardPublicProfileCardModelObj
                  .vaccinationstatsItemList[index];
              return VaccinationstatsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
