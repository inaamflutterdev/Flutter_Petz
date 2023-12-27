import 'models/recover_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/recover_provider.dart';

class RecoverScreen extends StatefulWidget {
  const RecoverScreen({Key? key})
      : super(
          key: key,
        );

  @override
  RecoverScreenState createState() => RecoverScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RecoverProvider(),
      child: RecoverScreen(),
    );
  }
}

class RecoverScreenState extends State<RecoverScreen> {
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
            horizontal: 25.h,
            vertical: 32.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_recover_account".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "msg_please_enter_your2".tr,
                    style: CustomTextStyles.bodyMediumErrorContainer,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              _buildField(context),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                text: "lbl_reset_password".tr,
                margin: EdgeInsets.only(left: 8.h),
                buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
              ),
              Spacer(),
              SizedBox(height: 24.v),
              CustomImageView(
                imagePath: ImageConstant.imgFrameBlueGray10001,
                height: 62.v,
                width: 174.h,
              ),
            ],
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
  Widget _buildField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_phone_number".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 17.v),
          Text(
            "lbl_type_here".tr,
            style: CustomTextStyles.bodyMediumGray40002,
          ),
          SizedBox(height: 21.v),
          Divider(),
        ],
      ),
    );
  }
}
