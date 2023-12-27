import 'models/emergency_contacts_add_edit_address_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_switch.dart';
import 'provider/emergency_contacts_add_edit_address_provider.dart';

// ignore_for_file: must_be_immutable
class EmergencyContactsAddEditAddressPage extends StatefulWidget {
  const EmergencyContactsAddEditAddressPage({Key? key})
      : super(
          key: key,
        );

  @override
  EmergencyContactsAddEditAddressPageState createState() =>
      EmergencyContactsAddEditAddressPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmergencyContactsAddEditAddressProvider(),
      child: EmergencyContactsAddEditAddressPage(),
    );
  }
}

class EmergencyContactsAddEditAddressPageState
    extends State<EmergencyContactsAddEditAddressPage>
    with AutomaticKeepAliveClientMixin<EmergencyContactsAddEditAddressPage> {
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
              SizedBox(height: 14.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Column(
                    children: [
                      _buildFiftyNine(context),
                      SizedBox(height: 8.v),
                      _buildFiftyEight(context),
                      Spacer(),
                      _buildFrame(context),
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
  Widget _buildFiftyNine(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillRed.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 3.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_0idmfsl7031".tr,
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                SizedBox(height: 4.v),
                Text(
                  "lbl_mish".tr,
                  style: CustomTextStyles.titleMediumOnErrorContainer_1,
                ),
              ],
            ),
          ),
          Selector<EmergencyContactsAddEditAddressProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch,
            builder: (context, isSelectedSwitch, child) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 8.v,
                  bottom: 7.v,
                ),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<EmergencyContactsAddEditAddressProvider>()
                      .changeSwitchBox1(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              top: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_n_a2".tr,
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                SizedBox(height: 5.v),
                Text(
                  "lbl_maylo".tr,
                  style: CustomTextStyles.titleMediumOnErrorContainer_1,
                ),
              ],
            ),
          ),
          Selector<EmergencyContactsAddEditAddressProvider, bool?>(
            selector: (
              context,
              provider,
            ) =>
                provider.isSelectedSwitch1,
            builder: (context, isSelectedSwitch1, child) {
              return CustomSwitch(
                margin: EdgeInsets.only(
                  top: 10.v,
                  bottom: 9.v,
                ),
                value: isSelectedSwitch1,
                onChange: (value) {
                  context
                      .read<EmergencyContactsAddEditAddressProvider>()
                      .changeSwitchBox2(value);
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
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
}
