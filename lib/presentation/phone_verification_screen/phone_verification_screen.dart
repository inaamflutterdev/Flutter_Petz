import 'models/phone_verification_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:inaam_s_application1/widgets/custom_pin_code_text_field.dart';
import 'provider/phone_verification_provider.dart';

class PhoneVerificationScreen extends StatefulWidget {
  const PhoneVerificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PhoneVerificationScreenState createState() => PhoneVerificationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PhoneVerificationProvider(),
      child: PhoneVerificationScreen(),
    );
  }
}

class PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 27.h,
            vertical: 14.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 219.h,
                margin: EdgeInsets.only(left: 6.h),
                child: Text(
                  "msg_verify_your_phone".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineLarge!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                width: 290.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 23.h,
                ),
                child: Text(
                  "msg_please_enter_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumErrorContainer.copyWith(
                    height: 1.71,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  right: 23.h,
                ),
                child:
                    Selector<PhoneVerificationProvider, TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.otpController,
                  builder: (context, otpController, child) {
                    return CustomPinCodeTextField(
                      context: context,
                      controller: otpController,
                      onChanged: (value) {
                        otpController?.text = value;
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 31.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 6.h,
                  right: 23.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_back".tr,
                      style: CustomTextStyles.titleSmallGray500,
                    ),
                    Text(
                      "msg_didn_t_receive_code".tr,
                      style: CustomTextStyles.titleSmallLightblue500,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 31.v),
              Divider(
                indent: 6.h,
              ),
              SizedBox(height: 37.v),
              CustomElevatedButton(
                text: "lbl_verify".tr,
                margin: EdgeInsets.only(left: 6.h),
                buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 79.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGridGray900,
        margin: EdgeInsets.fromLTRB(49.h, 13.v, 302.h, 13.v),
      ),
      styleType: Style.bgShadow,
    );
  }
}
