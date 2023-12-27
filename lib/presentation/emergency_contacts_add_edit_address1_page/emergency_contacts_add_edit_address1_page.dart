import 'models/emergency_contacts_add_edit_address1_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/emergency_contacts_add_edit_address1_provider.dart';

// ignore_for_file: must_be_immutable
class EmergencyContactsAddEditAddress1Page extends StatefulWidget {
  const EmergencyContactsAddEditAddress1Page({Key? key})
      : super(
          key: key,
        );

  @override
  EmergencyContactsAddEditAddress1PageState createState() =>
      EmergencyContactsAddEditAddress1PageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmergencyContactsAddEditAddress1Provider(),
      child: EmergencyContactsAddEditAddress1Page(),
    );
  }
}

class EmergencyContactsAddEditAddress1PageState
    extends State<EmergencyContactsAddEditAddress1Page>
    with AutomaticKeepAliveClientMixin<EmergencyContactsAddEditAddress1Page> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Column(
                    children: [
                      _buildAddressFrame(context),
                      Spacer(),
                      _buildSaveButton(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressFrame(BuildContext context) {
    return Column(
      children: [
        _buildAddressField(context),
        SizedBox(height: 14.v),
        _buildAddressField(context),
        SizedBox(height: 13.v),
        _buildAddressField(context),
        SizedBox(height: 14.v),
        _buildAddressField(context),
        SizedBox(height: 13.v),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "lbl_post_code".tr,
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(height: 24.v),
        Divider(),
      ],
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 140.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "lbl_save".tr,
          style: CustomTextStyles.titleSmallGray900,
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildAddressField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_city".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 20.v),
        Divider(),
      ],
    );
  }
}
