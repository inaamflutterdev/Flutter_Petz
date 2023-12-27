import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 22.v,
              bottom: 26.v,
            ),
            child: Text(
              userprofileItemModelObj.gender!,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Container(
            height: 67.v,
            width: 86.h,
            margin: EdgeInsets.only(left: 164.h),
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.fillBlueGrayTL20,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: userprofileItemModelObj?.contrastButton1,
                    ),
                  ),
                ),
                CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  decoration: IconButtonStyleHelper.fillPrimary,
                  alignment: Alignment.topLeft,
                  child: CustomImageView(
                    imagePath: userprofileItemModelObj?.contrastButton2,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Text(
                      userprofileItemModelObj.maleText!,
                      style: CustomTextStyles.bodySmallGray900,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Text(
                      userprofileItemModelObj.femaleText!,
                      style: CustomTextStyles.bodySmallErrorContainer11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
