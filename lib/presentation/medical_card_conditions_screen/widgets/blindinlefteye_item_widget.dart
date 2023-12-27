import '../models/blindinlefteye_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class BlindinlefteyeItemWidget extends StatelessWidget {
  BlindinlefteyeItemWidget(
    this.blindinlefteyeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BlindinlefteyeItemModel blindinlefteyeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Text(
            blindinlefteyeItemModelObj.blindInLeftEye!,
            style: CustomTextStyles.titleSmallBlack900_2,
          ),
          SizedBox(height: 4.v),
          Text(
            blindinlefteyeItemModelObj.chronicCondition!,
            style: theme.textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
