import 'models/add_pet_verification_check1_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'provider/add_pet_verification_check1_provider.dart';

// ignore_for_file: must_be_immutable
class AddPetVerificationCheck1Bottomsheet extends StatefulWidget {
  const AddPetVerificationCheck1Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddPetVerificationCheck1BottomsheetState createState() =>
      AddPetVerificationCheck1BottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddPetVerificationCheck1Provider(),
      child: AddPetVerificationCheck1Bottomsheet(),
    );
  }
}

class AddPetVerificationCheck1BottomsheetState
    extends State<AddPetVerificationCheck1Bottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildAddPetScreen(context);
  }

  /// Section Widget
  Widget _buildAddPetScreen(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 484.v,
          width: 410.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 484.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30.h),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    right: 42.h,
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
                      SizedBox(height: 20.v),
                      Text(
                        "msg_your_pets_id_set".tr,
                        style: CustomTextStyles.titleMediumGray900Bold,
                      ),
                      SizedBox(height: 26.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkBlack900,
                        height: 68.v,
                        width: 69.h,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgMask0233182,
                height: 151.v,
                width: 252.h,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 62.h,
                  bottom: 146.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroupBlack900215x414,
                height: 215.v,
                width: 410.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 87.v),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 81.h,
                    bottom: 161.v,
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
              CustomElevatedButton(
                width: 316.h,
                text: "lbl_continue".tr,
                margin: EdgeInsets.only(
                  right: 30.h,
                  bottom: 18.v,
                ),
                alignment: Alignment.bottomRight,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 72.h,
                    bottom: 93.v,
                  ),
                  child: Text(
                    "msg_let_enter_the_profile".tr,
                    style: theme.textTheme.bodyLarge,
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
