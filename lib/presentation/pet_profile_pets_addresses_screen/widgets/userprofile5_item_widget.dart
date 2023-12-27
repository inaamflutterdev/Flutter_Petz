import '../models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile5ItemModelObj.profileAddress!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.v),
                Text(
                  userprofile5ItemModelObj.substanceUsesYour!,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack90024x22,
            height: 24.v,
            width: 22.h,
            margin: EdgeInsets.only(
              top: 13.v,
              right: 6.h,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }
}
