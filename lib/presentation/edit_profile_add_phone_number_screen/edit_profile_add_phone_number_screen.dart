import 'models/edit_profile_add_phone_number_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:inaam_s_application1/widgets/custom_icon_button.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/edit_profile_add_phone_number_provider.dart';

class EditProfileAddPhoneNumberScreen extends StatefulWidget {
  const EditProfileAddPhoneNumberScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EditProfileAddPhoneNumberScreenState createState() =>
      EditProfileAddPhoneNumberScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EditProfileAddPhoneNumberProvider(),
      child: EditProfileAddPhoneNumberScreen(),
    );
  }
}

class EditProfileAddPhoneNumberScreenState
    extends State<EditProfileAddPhoneNumberScreen> {
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
        body: SizedBox(
          height: 703.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              _buildEditProfileSection(context),
              CustomImageView(
                imagePath: ImageConstant.imgCallBlack900,
                height: 23.v,
                width: 24.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 44.h,
                  bottom: 248.v,
                ),
              ),
              _buildFieldSection(context),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 31.v,
                  ),
                  decoration: AppDecoration.fillBlack900,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEditBlack90024x22,
                    height: 32.v,
                    width: 29.h,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 410.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30.h),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.blueGray10033,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(
                          0,
                          -20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _buildFieldSection1(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 112.h,
                    right: 112.h,
                    bottom: 301.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 50.h,
                        child: Divider(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Text(
                        "msg_add_phone_number".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
              _buildFieldSection2(context),
              CustomElevatedButton(
                width: 315.h,
                text: "lbl_save".tr,
                margin: EdgeInsets.only(bottom: 29.v),
                alignment: Alignment.bottomCenter,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBarSection(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditProfileSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          top: 22.v,
          right: 30.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 50.v,
              width: 52.h,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillPrimaryTL10,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroupBlack900,
              ),
            ),
            SizedBox(height: 23.v),
            Text(
              "lbl_edit_profile".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
            SizedBox(height: 3.v),
            Text(
              "msg_make_sure_your_profile".tr,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
            SizedBox(height: 19.v),
            Row(
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
                    bottom: 25.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFrameBlueGray1000171x71,
                        height: 71.adaptSize,
                        width: 71.adaptSize,
                      ),
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
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 29.h,
          right: 29.h,
          bottom: 284.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_email".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 17.v),
            Text(
              "msg_john_smith_mail_com".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 20.v),
            Divider(),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldSection1(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          bottom: 205.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_phone_type".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 10.v),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                        child: Text(
                          "lbl_mobile".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgShare,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.v),
                Divider(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldSection2(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          bottom: 119.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_phone_number".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 16.v),
            Selector<EditProfileAddPhoneNumberProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.phoneNumberController,
              builder: (context, phoneNumberController, child) {
                return CustomTextFormField(
                  controller: phoneNumberController,
                  hintText: "lbl_62_81299975775".tr,
                  hintStyle: theme.textTheme.bodyMedium!,
                  textInputAction: TextInputAction.done,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
