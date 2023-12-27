import '../models/petprofilelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class PetprofilelistItemWidget extends StatelessWidget {
  PetprofilelistItemWidget(
    this.petprofilelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PetprofilelistItemModel petprofilelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 104.h,
            margin: EdgeInsets.only(top: 8.v),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_jessica_smith".tr,
                    style: CustomTextStyles.titleMediumOnErrorContainer,
                  ),
                  TextSpan(
                    text: "lbl_family".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack90024x22,
            height: 24.v,
            width: 22.h,
            margin: EdgeInsets.only(
              left: 149.h,
              top: 18.v,
              bottom: 15.v,
            ),
          ),
        ],
      ),
    );
  }
}
