import '../models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(
    this.userprofile2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile2ItemModelObj.profileAddress!,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.v),
                Text(
                  userprofile2ItemModelObj.substanceUsesYour!,
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
              top: 4.v,
              right: 6.h,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }
}
