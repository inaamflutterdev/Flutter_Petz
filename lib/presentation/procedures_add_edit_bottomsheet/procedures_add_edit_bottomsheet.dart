import 'models/procedures_add_edit_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/procedures_add_edit_provider.dart';

// ignore_for_file: must_be_immutable
class ProceduresAddEditBottomsheet extends StatefulWidget {
  const ProceduresAddEditBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ProceduresAddEditBottomsheetState createState() =>
      ProceduresAddEditBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProceduresAddEditProvider(),
      child: ProceduresAddEditBottomsheet(),
    );
  }
}

class ProceduresAddEditBottomsheetState
    extends State<ProceduresAddEditBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 50.h,
              child: Divider(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 98.h),
            child: Text(
              "lbl_add_procedure".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_title2".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 16.v),
                              Text(
                                "msg_enter_procedure".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgReply,
                        height: 28.v,
                        width: 22.h,
                        margin: EdgeInsets.only(
                          left: 41.h,
                          top: 30.v,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                Divider(),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildField(context),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildField(context),
          ),
          SizedBox(height: 8.v),
          Text(
            "lbl_procedure_notes".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 16.v),
          Container(
            width: 297.h,
            margin: EdgeInsets.only(right: 31.h),
            child: Text(
              "msg_any_notes_regarding".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Divider(
            endIndent: 12.h,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildField(context),
          ),
          SizedBox(height: 10.v),
          SizedBox(
            height: 124.v,
            width: 315.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildField(context),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    decoration: AppDecoration.outlineBlack900.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL10,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 99.h,
                        vertical: 15.v,
                      ),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL10,
                      ),
                      child: Text(
                        "msg_save_vaccination".tr,
                        style: CustomTextStyles.titleSmallGray900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_procedure_results".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 16.v),
        Container(
          width: 255.h,
          margin: EdgeInsets.only(right: 59.h),
          child: Text(
            "msg_what_was_the_outcome".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.71,
            ),
          ),
        ),
        SizedBox(height: 16.v),
        Divider(),
      ],
    );
  }
}
