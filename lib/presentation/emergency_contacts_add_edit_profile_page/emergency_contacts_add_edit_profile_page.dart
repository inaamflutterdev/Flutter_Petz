import 'models/emergency_contacts_add_edit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/core/utils/validation_functions.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/emergency_contacts_add_edit_profile_provider.dart';

// ignore_for_file: must_be_immutable
class EmergencyContactsAddEditProfilePage extends StatefulWidget {
  const EmergencyContactsAddEditProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  EmergencyContactsAddEditProfilePageState createState() =>
      EmergencyContactsAddEditProfilePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmergencyContactsAddEditProfileProvider(),
      child: EmergencyContactsAddEditProfilePage(),
    );
  }
}

class EmergencyContactsAddEditProfilePageState
    extends State<EmergencyContactsAddEditProfilePage>
    with AutomaticKeepAliveClientMixin<EmergencyContactsAddEditProfilePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 29.h),
                  child: Column(
                    children: [
                      _buildEmailField(context),
                      SizedBox(height: 13.v),
                      _buildFirstNameField(context),
                      SizedBox(height: 18.v),
                      _buildLastNameField(context),
                      SizedBox(height: 17.v),
                      _buildEmailField1(context),
                      SizedBox(height: 16.v),
                      _buildPhoneNumberField(context),
                      SizedBox(height: 16.v),
                      _buildSaveButton(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_contact_type".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 10.v),
        Padding(
          padding: EdgeInsets.only(right: 12.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.v),
                child: Text(
                  "lbl_family".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgShareBlack900,
                height: 24.adaptSize,
                width: 24.adaptSize,
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
  Widget _buildFirstName(BuildContext context) {
    return Selector<EmergencyContactsAddEditProfileProvider,
        TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.firstNameController,
      builder: (context, firstNameController, child) {
        return CustomTextFormField(
          controller: firstNameController,
          hintText: "lbl_john".tr,
          hintStyle: theme.textTheme.bodyMedium!,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFirstNameField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_first_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 15.v),
        _buildFirstName(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildLastName(BuildContext context) {
    return Selector<EmergencyContactsAddEditProfileProvider,
        TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.lastNameController,
      builder: (context, lastNameController, child) {
        return CustomTextFormField(
          controller: lastNameController,
          hintText: "lbl_smith".tr,
          hintStyle: theme.textTheme.bodyMedium!,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildLastNameField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_last_name".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 15.v),
        _buildLastName(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<EmergencyContactsAddEditProfileProvider,
        TextEditingController?>(
      selector: (
        context,
        provider,
      ) =>
          provider.emailController,
      builder: (context, emailController, child) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "msg_john_smith_mail_com".tr,
          hintStyle: theme.textTheme.bodyMedium!,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.emailAddress,
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildEmailField1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_email".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 17.v),
        _buildEmail(context),
      ],
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 13.h),
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
                      style: theme.textTheme.bodyMedium!.copyWith(
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
      ],
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_save".tr,
    );
  }
}
