import 'models/history_microchip_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/history_microchip_provider.dart';

// ignore_for_file: must_be_immutable
class HistoryMicrochipBottomsheet extends StatefulWidget {
  const HistoryMicrochipBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryMicrochipBottomsheetState createState() =>
      HistoryMicrochipBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryMicrochipProvider(),
      child: HistoryMicrochipBottomsheet(),
    );
  }
}

class HistoryMicrochipBottomsheetState
    extends State<HistoryMicrochipBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 50.h,
            child: Divider(
              color: theme.colorScheme.primary,
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_microchip_search2".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 15.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.v),
                child: Text(
                  "lbl_date_time".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 2.v),
                child: Text(
                  "msg_2022_june_12_12_28".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
            ],
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildIpLocation(
              context,
              ipLocationText: "lbl_ip_address".tr,
              cityText: "lbl_192_168_0_373".tr,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildIpLocation(
              context,
              ipLocationText: "lbl_ip_location".tr,
              cityText: "msg_new_york_city_ny".tr,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: _buildIpLocation(
              context,
              ipLocationText: "lbl_gps_location".tr,
              cityText: "msg_6_2247396_106_8019903".tr,
            ),
          ),
          SizedBox(height: 51.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildIpLocation(
    BuildContext context, {
    required String ipLocationText,
    required String cityText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Text(
            ipLocationText,
            style: theme.textTheme.bodySmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        Text(
          cityText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
