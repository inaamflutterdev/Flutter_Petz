import 'models/upload_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/upload_provider.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key})
      : super(
          key: key,
        );

  @override
  UploadScreenState createState() => UploadScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UploadProvider(),
      child: UploadScreen(),
    );
  }
}

class UploadScreenState extends State<UploadScreen> {
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
            horizontal: 24.h,
            vertical: 33.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgDog,
                height: 221.adaptSize,
                width: 221.adaptSize,
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 281.h,
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 28.h,
                  ),
                  child: Text(
                    "msg_would_you_like_to".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      height: 1.84,
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_upload_picture".tr,
                margin: EdgeInsets.only(left: 12.h),
                buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
              ),
              SizedBox(height: 27.v),
              CustomElevatedButton(
                text: "msg_i_ll_do_it_later".tr,
                margin: EdgeInsets.only(left: 12.h),
                buttonStyle: CustomButtonStyles.outlineBlackTL10,
                buttonTextStyle: CustomTextStyles.titleSmallBlack900_2,
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
      height: 61.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupBlack900,
        margin: EdgeInsets.fromLTRB(41.h, 13.v, 310.h, 13.v),
      ),
      styleType: Style.bgShadow,
    );
  }
}
