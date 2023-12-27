import '../models/line_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class LineItemWidget extends StatelessWidget {
  LineItemWidget(
    this.lineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LineItemModel lineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.h,
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Text(
        lineItemModelObj.group!,
        style: CustomTextStyles.titleSmallMedium_1,
      ),
    );
  }
}
