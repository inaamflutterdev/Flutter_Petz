import '../models/no_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class NoItemWidget extends StatelessWidget {
  NoItemWidget(
    this.noItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  NoItemModel noItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 11.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        noItemModelObj.no!,
        style: TextStyle(
          color: theme.colorScheme.onErrorContainer,
          fontSize: 14.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (noItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.blueGray100,
      selectedColor: theme.colorScheme.primary,
      shape: (noItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.h),
                bottomRight: Radius.circular(10.h),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.h),
                bottomLeft: Radius.circular(10.h),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
