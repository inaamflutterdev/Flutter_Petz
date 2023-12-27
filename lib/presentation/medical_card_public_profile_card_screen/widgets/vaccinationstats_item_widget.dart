import '../models/vaccinationstats_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class VaccinationstatsItemWidget extends StatelessWidget {
  VaccinationstatsItemWidget(
    this.vaccinationstatsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VaccinationstatsItemModel vaccinationstatsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.v,
      width: 317.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.only(left: 2.h),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.outlineIndigo60014.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.v),
                    child: Text(
                      vaccinationstatsItemModelObj.totalVaccinationText!,
                      style: CustomTextStyles.titleMediumUrbanistWhiteA700,
                    ),
                  ),
                  Text(
                    vaccinationstatsItemModelObj.twoText!,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 261.h,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.outlineIndigo.copyWith(
                borderRadius: BorderRadiusStyle.customBorderLR100,
              ),
              child: Text(
                vaccinationstatsItemModelObj.totalVaccinationButtonText!,
                style: CustomTextStyles.titleMediumUrbanistWhiteA700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
