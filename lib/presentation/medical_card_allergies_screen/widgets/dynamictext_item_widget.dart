import '../models/dynamictext_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class DynamictextItemWidget extends StatelessWidget {
  DynamictextItemWidget(
    this.dynamictextItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamictextItemModel dynamictextItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              dynamictextItemModelObj.dynamicText!,
              style: CustomTextStyles.titleSmallBlack900_2,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpBlack90024x20,
            height: 24.v,
            width: 20.h,
          ),
        ],
      ),
    );
  }
}
