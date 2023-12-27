import 'models/addresses_edit_non_profile_non_contact_address_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/addresses_edit_non_profile_non_contact_address_provider.dart';

// ignore_for_file: must_be_immutable
class AddressesEditNonProfileNonContactAddressBottomsheet
    extends StatefulWidget {
  const AddressesEditNonProfileNonContactAddressBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddressesEditNonProfileNonContactAddressBottomsheetState createState() =>
      AddressesEditNonProfileNonContactAddressBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddressesEditNonProfileNonContactAddressProvider(),
      child: AddressesEditNonProfileNonContactAddressBottomsheet(),
    );
  }
}

class AddressesEditNonProfileNonContactAddressBottomsheetState
    extends State<AddressesEditNonProfileNonContactAddressBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildProfileAddressSection(context);
  }

  /// Section Widget
  Widget _buildProfileAddressSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 3.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 29.v,
                  width: 147.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          "lbl_profile_address".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "msg_your_main_address".tr,
                          style: CustomTextStyles.bodySmallErrorContainer10,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.v),
                Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text(
                    "msg_wahington_dc_20006".tr,
                    style: CustomTextStyles.bodySmallErrorContainer10,
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 116.h,
              top: 12.v,
              bottom: 11.v,
            ),
          ),
        ],
      ),
    );
  }
}
