import 'models/pet_profile_public_view_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_public_view_page/pet_profile_public_view_page.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/pet_profile_public_view_tab_container_provider.dart';

class PetProfilePublicViewTabContainerScreen extends StatefulWidget {
  const PetProfilePublicViewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfilePublicViewTabContainerScreenState createState() =>
      PetProfilePublicViewTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfilePublicViewTabContainerProvider(),
      child: PetProfilePublicViewTabContainerScreen(),
    );
  }
}

class PetProfilePublicViewTabContainerScreenState
    extends State<PetProfilePublicViewTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 6.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameBlueGray10001,
                        height: 62.v,
                        width: 174.h,
                      ),
                      SizedBox(height: 20.v),
                      _buildContactOwnerSection(context),
                      SizedBox(height: 16.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 291.h,
                          margin: EdgeInsets.only(
                            left: 27.h,
                            right: 57.h,
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_any_behavioral_or2".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: "msg_distinctive_markings3".tr,
                                  style: theme.textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: " ",
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 9.v),
                      CustomElevatedButton(
                        text: "lbl_medical_card".tr,
                        margin: EdgeInsets.only(
                          left: 27.h,
                          right: 33.h,
                        ),
                        buttonStyle: CustomButtonStyles.outlineBlackTL102,
                        buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                      ),
                      SizedBox(height: 21.v),
                      _buildTabview(context),
                      _buildTabBarViewSection(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContactOwnerSection(BuildContext context) {
    return SizedBox(
      height: 185.v,
      width: 323.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "lbl_about_maylo".tr,
                style: CustomTextStyles.titleSmallBlack900_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 174.v,
              width: 323.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 43.h),
                      child: Text(
                        "lbl_verified".tr,
                        style: CustomTextStyles.titleMediumPoppins,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorBlack90020x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(
                      right: 21.h,
                      bottom: 2.v,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 9.v),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 23.v),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_maylo".tr,
                                  style: CustomTextStyles.titleMedium_1,
                                ),
                                SizedBox(height: 9.v),
                                SizedBox(
                                  width: 159.h,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_2_years_old_male4".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack900_1,
                                        ),
                                        TextSpan(
                                          text: "lbl_0idmfsl7031".tr,
                                          style: CustomTextStyles
                                              .titleSmallBlack900_3,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                SizedBox(height: 21.v),
                                CustomElevatedButton(
                                  width: 150.h,
                                  text: "lbl_contact_owner".tr,
                                  buttonStyle:
                                      CustomButtonStyles.outlineBlackTL103,
                                  buttonTextStyle:
                                      CustomTextStyles.titleSmallWhiteA700,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 6.v),
                            child: Column(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgDogProfile2,
                                  height: 132.adaptSize,
                                  width: 132.adaptSize,
                                ),
                                SizedBox(height: 14.v),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgVectorBlack90012x15,
                                  height: 12.v,
                                  width: 15.h,
                                  alignment: Alignment.centerRight,
                                  margin: EdgeInsets.only(right: 21.h),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 315.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          5.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_profile".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_address".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_contacts".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarViewSection(BuildContext context) {
    return SizedBox(
      height: 389.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          PetProfilePublicViewPage(),
          PetProfilePublicViewPage(),
          PetProfilePublicViewPage(),
        ],
      ),
    );
  }
}
