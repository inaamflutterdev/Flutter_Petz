import '../models/vaccination_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class VaccinationItemWidget extends StatelessWidget {
  VaccinationItemWidget(
    this.vaccinationItemModelObj, {
    Key? key,
    this.onSelectedChipView1,
  }) : super(
          key: key,
        );

  VaccinationItemModel vaccinationItemModelObj;

  Function(bool)? onSelectedChipView1;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        vaccinationItemModelObj.neuteredSpayed!,
        style: TextStyle(
          color: theme.colorScheme.onErrorContainer,
          fontSize: 14.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
      ),
      selected: (vaccinationItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.primary,
      selectedColor: appTheme.blueGray100,
      shape: (vaccinationItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.h),
                bottomLeft: Radius.circular(10.h),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.h),
                bottomRight: Radius.circular(10.h),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView1?.call(value);
      },
    );
  }
}
