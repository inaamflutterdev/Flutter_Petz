import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/core/utils/validation_functions.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_checkbox_button.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:inaam_s_application1/widgets/custom_phone_number.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/sign_up_two_provider.dart';

class SignUpTwoScreen extends StatefulWidget {
  const SignUpTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpTwoScreenState createState() => SignUpTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpTwoProvider(),
      child: SignUpTwoScreen(),
    );
  }
}

class SignUpTwoScreenState extends State<SignUpTwoScreen> {
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
              horizontal: 25.h,
              vertical: 21.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_sign_up".tr,
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                ),
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "msg_please_enter_your".tr,
                      style: CustomTextStyles.bodyMediumErrorContainer,
                    ),
                  ),
                ),
                SizedBox(height: 22.v),
                _buildEmailField(context),
                SizedBox(height: 22.v),
                _buildPhoneNumberField(context),
                SizedBox(height: 22.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 276.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      right: 38.h,
                    ),
                    child: Text(
                      "msg_your_password_must".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style:
                          CustomTextStyles.bodySmallErrorContainer_1.copyWith(
                        height: 1.83,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.v),
                _buildPasswordField(context),
                SizedBox(height: 32.v),
                CustomElevatedButton(
                  text: "lbl_sign_up".tr,
                  margin: EdgeInsets.only(
                    left: 7.h,
                    right: 3.h,
                  ),
                  buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
                ),
                SizedBox(height: 33.v),
                _buildCheckBox(context),
                SizedBox(height: 20.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_have_account".tr,
                        style: CustomTextStyles.bodyMediumErrorContainer_1,
                      ),
                      TextSpan(
                        text: "lbl_login_now".tr,
                        style: CustomTextStyles.titleSmallMedium,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
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
        imagePath: ImageConstant.imgGrid,
        margin: EdgeInsets.fromLTRB(32.h, 3.v, 293.h, 3.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 17.v),
          Selector<SignUpTwoProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.emailController,
            builder: (context, emailController, child) {
              return CustomTextFormField(
                controller: emailController,
                hintText: "lbl_type_here".tr,
                hintStyle: CustomTextStyles.bodyMediumGray400,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_phone_number".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 12.v),
          Column(
            children: [
              Consumer<SignUpTwoProvider>(
                builder: (context, provider, child) {
                  return CustomPhoneNumber(
                    country: provider.selectedCountry ??
                        CountryPickerUtils.getCountryByPhoneCode('1'),
                    controller: provider.phoneNumberController,
                    onTap: (Country value) {
                      context.read<SignUpTwoProvider>().changeCountry(value);
                    },
                  );
                },
              ),
              Container(
                height: 1.v,
                width: 310.h,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 14.v),
          Consumer<SignUpTwoProvider>(
            builder: (context, provider, child) {
              return CustomTextFormField(
                controller: provider.passwordController,
                hintText: "lbl_type_here".tr,
                hintStyle: CustomTextStyles.bodyMediumGray400,
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
    );
  }

  /// Section Widget
  Widget _buildCheckBox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 9.h,
      ),
      child: Selector<SignUpTwoProvider, bool?>(
        selector: (
          context,
          provider,
        ) =>
            provider.checkBox,
        builder: (context, checkBox, child) {
          return CustomCheckboxButton(
            text: "msg_by_signing_up_you".tr,
            isExpandedText: true,
            value: checkBox,
            onChange: (value) {
              context.read<SignUpTwoProvider>().changeCheckBox1(value);
            },
          );
        },
      ),
    );
  }
}
