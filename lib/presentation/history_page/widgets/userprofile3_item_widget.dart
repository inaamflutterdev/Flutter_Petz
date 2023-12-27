import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofile3ItemModelObj.idmfsl!,
                  style: CustomTextStyles.titleSmallBlack900_2,
                ),
                SizedBox(height: 4.v),
                Text(
                  userprofile3ItemModelObj.username!,
                  style: CustomTextStyles.titleMediumOnErrorContainer_1,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          userprofile3ItemModelObj.month!,
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgCalendarBlack900,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                        margin: EdgeInsets.only(left: 5.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.v),
                      child: Text(
                        userprofile3ItemModelObj.newYorkCityNY!,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedin,
                      height: 18.v,
                      width: 13.h,
                      margin: EdgeInsets.only(left: 7.h),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
