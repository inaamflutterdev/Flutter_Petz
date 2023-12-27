import 'models/edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/edit_profile_provider.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EditProfileScreenState createState() => EditProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EditProfileProvider(),
      child: EditProfileScreen(),
    );
  }
}

class EditProfileScreenState extends State<EditProfileScreen> {
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
              SizedBox(height: 21.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 29.h,
                      right: 29.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_edit_profile".tr,
                          style: CustomTextStyles.titleMediumBold,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "msg_make_sure_your_profile".tr,
                          style: CustomTextStyles.bodySmallErrorContainer,
                        ),
                        SizedBox(height: 18.v),
                        _buildEmailSection(context),
                        SizedBox(height: 17.v),
                        Text(
                          "lbl_email".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 17.v),
                        _buildEmailRow(context),
                        SizedBox(height: 20.v),
                        Divider(),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(right: 16.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_phone_number".tr,
                                    style: theme.textTheme.titleSmall,
                                  ),
                                  SizedBox(height: 16.v),
                                  SizedBox(
                                    width: 173.h,
                                    child: Text(
                                      "msg_62_81299975775".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          theme.textTheme.bodyMedium!.copyWith(
                                        height: 1.71,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCall,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 8.v,
                                  bottom: 49.v,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 16.v),
                        Divider(),
                        SizedBox(height: 27.v),
                        Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 5.v),
                                child: Text(
                                  "lbl_birthday".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgCalendar,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "msg_19_december_1977".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 22.v),
                        Divider(),
                        SizedBox(height: 17.v),
                        _buildGenderColumn(context),
                        SizedBox(height: 14.v),
                        _buildSaveButton(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: _buildBottomBar(context),
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
          imagePath: ImageConstant.imgEditBlack900,
          margin: EdgeInsets.symmetric(
            horizontal: 42.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_first_name".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 15.v),
            Text(
              "lbl_john".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 22.v),
            SizedBox(
              width: 158.h,
              child: Divider(),
            ),
            SizedBox(height: 17.v),
            Text(
              "lbl_last_name".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 15.v),
            Text(
              "lbl_smith".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 22.v),
            SizedBox(
              width: 163.h,
              child: Divider(),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 35.v,
            bottom: 24.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlueGray1000171x71,
                height: 71.adaptSize,
                width: 71.adaptSize,
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 86.h,
                child: Text(
                  "msg_change_profile_picture".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.labelLargeGray900.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmailRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_john_smith_mail_com".tr,
            style: theme.textTheme.bodyMedium,
          ),
          Text(
            "lbl_verify".tr,
            style: theme.textTheme.bodySmall!.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGenderColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_gender".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 12.v),
        Padding(
          padding: EdgeInsets.only(right: 13.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 3.v,
                  bottom: 2.v,
                ),
                child: Text(
                  "lbl_select".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgThumbsUp,
                height: 24.v,
                width: 26.h,
              ),
            ],
          ),
        ),
        SizedBox(height: 20.v),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 140.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "lbl_save".tr,
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
