import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_icon_button.dart';
import 'provider/profile_provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileScreenState createState() => ProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileProvider(),
      child: ProfileScreen(),
    );
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 19.v,
          ),
          child: Column(
            children: [
              _buildRowWithIconButtonAndImage(context),
              SizedBox(height: 32.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "msg_hello_account_first".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Text(
                    "msg_your_account_settings".tr,
                    style: CustomTextStyles.bodySmallErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: _buildRowWithLoginPasswordAndLocation(
                  context,
                  loginPassword: "lbl_profile".tr,
                  location: ImageConstant.imgEdit,
                ),
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: _buildRowWithLoginPasswordAndLocation(
                  context,
                  loginPassword: "msg_login_password".tr,
                  location: ImageConstant.imgLocation,
                ),
              ),
              SizedBox(height: 33.v),
              _buildRowWithEmergencyContactsAndVector(context),
              SizedBox(height: 34.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: _buildRowWithLoginPasswordAndLocation(
                  context,
                  loginPassword: "lbl_addresses".tr,
                  location: ImageConstant.imgHome,
                ),
              ),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: _buildRowWithPetsIDSetsAndPrinter(
                  context,
                  dynamicText: "lbl_history".tr,
                  dynamicImage: ImageConstant.imgClock,
                ),
              ),
              SizedBox(height: 34.v),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: _buildRowWithPetsIDSetsAndPrinter(
                  context,
                  dynamicText: "lbl_pets_id_sets".tr,
                  dynamicImage: ImageConstant.imgPrinter,
                ),
              ),
              SizedBox(height: 89.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlueGray10001,
                height: 38.v,
                width: 108.h,
              ),
              SizedBox(height: 9.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarWithImage(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWithIconButtonAndImage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 46.v),
            child: CustomIconButton(
              height: 50.v,
              width: 52.h,
              padding: EdgeInsets.all(13.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroupBlack900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrameBlueGray1000196x96,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowWithEmergencyContactsAndVector(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
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
  Widget _buildBottomBarWithImage(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildRowWithLoginPasswordAndLocation(
    BuildContext context, {
    required String loginPassword,
    required String location,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 2.v,
          ),
          child: Text(
            loginPassword,
            style: CustomTextStyles.titleMedium_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: location,
          height: 31.v,
          width: 24.h,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildRowWithPetsIDSetsAndPrinter(
    BuildContext context, {
    required String dynamicText,
    required String dynamicImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(
            dynamicText,
            style: CustomTextStyles.titleMedium_1.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: dynamicImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
