import '../models/rectanglegrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class RectanglegridItemWidget extends StatelessWidget {
  RectanglegridItemWidget(
    this.rectanglegridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RectanglegridItemModel rectanglegridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.adaptSize,
      width: 100.adaptSize,
      decoration: BoxDecoration(
        color: appTheme.blueGray10001,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
