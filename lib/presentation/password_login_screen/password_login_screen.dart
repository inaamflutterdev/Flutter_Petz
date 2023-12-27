import 'models/password_login_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/core/utils/validation_functions.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_icon_button.dart';
import 'package:inaam_s_application1/widgets/custom_outlined_button.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/password_login_provider.dart';

class PasswordLoginScreen extends StatefulWidget {
  const PasswordLoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PasswordLoginScreenState createState() => PasswordLoginScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PasswordLoginProvider(),
      child: PasswordLoginScreen(),
    );
  }
}

class PasswordLoginScreenState extends State<PasswordLoginScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 28.h,
              vertical: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_login_password2".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
                SizedBox(height: 1.v),
                Container(
                  width: 287.h,
                  margin: EdgeInsets.only(
                    left: 2.h,
                    right: 29.h,
                  ),
                  child: Text(
                    "msg_you_can_change_your".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_google_apple_accouns".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_connect_your_accounts".tr,
                    style: CustomTextStyles.bodySmallErrorContainer10,
                  ),
                ),
                SizedBox(height: 22.v),
                _buildSocialMedia(context),
                SizedBox(height: 33.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "lbl_change_password".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "msg_mnimum_8_characters".tr,
                    style: CustomTextStyles.bodySmallErrorContainer10,
                  ),
                ),
                SizedBox(height: 12.v),
                _buildPassword(context),
                SizedBox(height: 16.v),
                _buildPassword1(context),
                SizedBox(height: 21.v),
                _buildPassword2(context),
                SizedBox(height: 16.v),
                _buildSignOut(context),
              ],
            ),
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
          imagePath: ImageConstant.imgLocation,
          margin: EdgeInsets.symmetric(
            horizontal: 35.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGoogle(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_google".tr,
        margin: EdgeInsets.only(right: 7.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 8.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGoogle,
            height: 23.adaptSize,
            width: 23.adaptSize,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildApple(BuildContext context) {
    return Expanded(
      child: CustomOutlinedButton(
        text: "lbl_apple".tr,
        margin: EdgeInsets.only(left: 7.h),
        leftIcon: Container(
          margin: EdgeInsets.only(right: 7.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgVector,
            height: 20.v,
            width: 16.h,
          ),
        ),
        buttonTextStyle: CustomTextStyles.titleSmallUrbanist,
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialMedia(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildGoogle(context),
          _buildApple(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Consumer<PasswordLoginProvider>(
        builder: (context, provider, child) {
          return CustomTextFormField(
            controller: provider.passwordController,
            hintText: "msg_input_your_old_password".tr,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 29.v, 4.h, 20.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 69.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: provider.isShowPassword,
            contentPadding: EdgeInsets.symmetric(vertical: 20.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Consumer<PasswordLoginProvider>(
        builder: (context, provider, child) {
          return CustomTextFormField(
            controller: provider.passwordController1,
            hintText: "msg_input_your_old_password".tr,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility1();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 30.v, 4.h, 17.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 69.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: provider.isShowPassword1,
            contentPadding: EdgeInsets.symmetric(vertical: 20.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Consumer<PasswordLoginProvider>(
        builder: (context, provider, child) {
          return CustomTextFormField(
            controller: provider.passwordController2,
            hintText: "msg_input_your_old_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            suffix: InkWell(
              onTap: () {
                provider.changePasswordVisibility2();
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(30.h, 30.v, 4.h, 15.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
              ),
            ),
            suffixConstraints: BoxConstraints(
              maxHeight: 69.v,
            ),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: provider.isShowPassword2,
            contentPadding: EdgeInsets.symmetric(vertical: 20.v),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSignOut(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 13.v,
            ),
            child: Text(
              "lbl_sign_out".tr,
              style: CustomTextStyles.titleMedium_1,
            ),
          ),
          CustomIconButton(
            height: 50.v,
            width: 52.h,
            padding: EdgeInsets.all(13.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDown,
            ),
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
}
