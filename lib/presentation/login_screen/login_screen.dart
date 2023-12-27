import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/core/utils/validation_functions.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:inaam_s_application1/widgets/custom_outlined_button.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginProvider(),
      child: LoginScreen(),
    );
  }
}

class LoginScreenState extends State<LoginScreen> {
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
              horizontal: 21.h,
              vertical: 29.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "lbl_welcome_back".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
                SizedBox(height: 17.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 18.h),
                    child: Text(
                      "msg_please_login_to".tr,
                      style: CustomTextStyles.bodyMediumErrorContainer,
                    ),
                  ),
                ),
                SizedBox(height: 12.v),
                _buildEmailField(context),
                SizedBox(height: 22.v),
                _buildPasswordField(context),
                SizedBox(height: 35.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: Text(
                      "lbl_forgot_password".tr,
                      style: CustomTextStyles.titleSmallLightblue500,
                    ),
                  ),
                ),
                SizedBox(height: 27.v),
                CustomElevatedButton(
                  text: "lbl_sign_in".tr,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    right: 7.h,
                  ),
                  buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
                ),
                SizedBox(height: 21.v),
                _buildSocialMediaRow(context),
                SizedBox(height: 19.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_don_t_have_account2".tr,
                        style: CustomTextStyles.bodyMediumErrorContainer_1,
                      ),
                      TextSpan(
                        text: "lbl_create_one".tr,
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 40.v),
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlueGray10001,
                  height: 62.v,
                  width: 174.h,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgFrame427321033,
        margin: EdgeInsets.fromLTRB(32.h, 3.v, 293.h, 3.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_email".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 17.v),
            Selector<LoginProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.emailController,
              builder: (context, emailController, child) {
                return CustomTextFormField(
                  controller: emailController,
                  hintText: "lbl_type_here".tr,
                  hintStyle: CustomTextStyles.bodyMediumGray40002,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_password".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 14.v),
            Consumer<LoginProvider>(
              builder: (context, provider, child) {
                return CustomTextFormField(
                  controller: provider.passwordController,
                  hintText: "lbl_type_here".tr,
                  hintStyle: CustomTextStyles.bodyMediumGray40002,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                    onTap: () {
                      provider.changePasswordVisibility();
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 30.h,
                        bottom: 23.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 43.v,
                  ),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: provider.isShowPassword,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSocialMediaRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 14.h,
        right: 4.h,
      ),
      decoration: AppDecoration.outlineBlack900,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
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
          ),
          Expanded(
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
            ),
          ),
        ],
      ),
    );
  }
}
