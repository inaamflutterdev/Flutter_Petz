import 'models/history_vet_access_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/history_vet_access_provider.dart';

// ignore_for_file: must_be_immutable
class HistoryVetAccessBottomsheet extends StatefulWidget {
  const HistoryVetAccessBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryVetAccessBottomsheetState createState() =>
      HistoryVetAccessBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryVetAccessProvider(),
      child: HistoryVetAccessBottomsheet(),
    );
  }
}

class HistoryVetAccessBottomsheetState
    extends State<HistoryVetAccessBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 16.v,
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
          SizedBox(height: 2.v),
          Text(
            "msg_vet_access_details".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: _buildDateTimeRow(
              context,
              dateTimeLabel: "lbl_access_by".tr,
              timeLabel: "lbl_ownership_card".tr,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: _buildDateTimeRow(
              context,
              dateTimeLabel: "lbl_date_time".tr,
              timeLabel: "msg_2022_june_12_12_28".tr,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              right: 1.h,
            ),
            child: _buildIpLocationRow(
              context,
              ipLocationText: "lbl_ip_address".tr,
              newYorkCityText: "lbl_192_168_0_373".tr,
            ),
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              right: 1.h,
            ),
            child: _buildIpLocationRow(
              context,
              ipLocationText: "lbl_ip_location".tr,
              newYorkCityText: "msg_new_york_city_ny".tr,
            ),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: _buildDateTimeRow(
              context,
              dateTimeLabel: "lbl_gps_location".tr,
              timeLabel: "lbl_n_a".tr,
            ),
          ),
          SizedBox(height: 47.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildDateTimeRow(
    BuildContext context, {
    required String dateTimeLabel,
    required String timeLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          dateTimeLabel,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Text(
          timeLabel,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildIpLocationRow(
    BuildContext context, {
    required String ipLocationText,
    required String newYorkCityText,
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
          newYorkCityText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.black900,
          ),
        ),
      ],
    );
  }
}
