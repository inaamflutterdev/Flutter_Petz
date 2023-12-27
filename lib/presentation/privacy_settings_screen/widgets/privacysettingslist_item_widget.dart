import '../models/privacysettingslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class PrivacysettingslistItemWidget extends StatelessWidget {
  PrivacysettingslistItemWidget(
    this.privacysettingslistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PrivacysettingslistItemModel privacysettingslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMobile,
            height: 69.v,
            width: 70.h,
          ),
          Container(
            width: 149.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 13.v,
              bottom: 6.v,
            ),
            child: Text(
              privacysettingslistItemModelObj.dogText!,
              maxLines: 2,
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
