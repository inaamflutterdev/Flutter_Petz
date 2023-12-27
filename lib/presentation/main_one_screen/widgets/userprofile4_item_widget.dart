import '../models/userprofile4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class Userprofile4ItemWidget extends StatelessWidget {
  Userprofile4ItemWidget(
    this.userprofile4ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile4ItemModel userprofile4ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: userprofile4ItemModelObj?.userImage,
                  height: 69.v,
                  width: 70.h,
                ),
                CustomElevatedButton(
                  width: 150.h,
                  text: "lbl_verify_now".tr,
                  margin: EdgeInsets.only(bottom: 19.v),
                  buttonStyle: CustomButtonStyles.outlineBlackTL102,
                  buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Container(
            width: 149.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Text(
              userprofile4ItemModelObj.petInfoText!,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.71,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
