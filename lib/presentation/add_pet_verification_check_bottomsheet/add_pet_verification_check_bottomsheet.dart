import 'models/add_pet_verification_check_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'provider/add_pet_verification_check_provider.dart';

// ignore_for_file: must_be_immutable
class AddPetVerificationCheckBottomsheet extends StatefulWidget {
  const AddPetVerificationCheckBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddPetVerificationCheckBottomsheetState createState() =>
      AddPetVerificationCheckBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddPetVerificationCheckProvider(),
      child: AddPetVerificationCheckBottomsheet(),
    );
  }
}

class AddPetVerificationCheckBottomsheetState
    extends State<AddPetVerificationCheckBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildVerifyYourPetsIdSection(context),
    );
  }

  /// Section Widget
  Widget _buildVerifyYourPetsIdSection(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 524.v,
          width: 414.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 524.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.circular(
                      30.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMask0233182,
                height: 151.v,
                width: 252.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 67.v,
                  right: 66.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroupBlack900215x414,
                height: 215.v,
                width: 414.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 61.v),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 82.v,
                    right: 85.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack90019x11,
                                height: 19.v,
                                width: 11.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack90017x29,
                                height: 17.v,
                                width: 29.h,
                                margin: EdgeInsets.only(top: 3.v),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack9003x4,
                                height: 3.v,
                                width: 4.h,
                                margin: EdgeInsets.only(
                                  left: 1.h,
                                  top: 16.v,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorBlack90020x18,
                                height: 20.v,
                                width: 18.h,
                                margin: EdgeInsets.only(left: 1.h),
                              ),
                            ],
                          ),
                          SizedBox(height: 40.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroupWhiteA700,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(left: 3.h),
                          ),
                          SizedBox(height: 32.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgVectorWhiteA700,
                            height: 7.v,
                            width: 51.h,
                            margin: EdgeInsets.only(left: 4.h),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 63.h,
                          top: 45.v,
                        ),
                        child: QrImageView(
                          data: 'https://www.google.com',
                          size: 75.v,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 12.v),
                  child: SizedBox(
                    width: 213.h,
                    child: Divider(
                      color: theme.colorScheme.primary,
                      endIndent: 163.h,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 119.h),
                  child: Text(
                    "msg_verify_your_pets_id".tr,
                    style: CustomTextStyles.titleSmallBlack900_1,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 32.h,
                    bottom: 101.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "msg_please_tap_or_scan".tr,
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                      SizedBox(height: 53.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomElevatedButton(
                            width: 148.h,
                            text: "lbl_later".tr,
                            buttonStyle: CustomButtonStyles.outlineBlackTL101,
                          ),
                          CustomElevatedButton(
                            width: 148.h,
                            text: "lbl_scan_qr".tr,
                            margin: EdgeInsets.only(left: 16.h),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
