import 'models/addresses_edit_address_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/addresses_edit_address_provider.dart';

// ignore_for_file: must_be_immutable
class AddressesEditAddressBottomsheet extends StatefulWidget {
  const AddressesEditAddressBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddressesEditAddressBottomsheetState createState() =>
      AddressesEditAddressBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddressesEditAddressProvider(),
      child: AddressesEditAddressBottomsheet(),
    );
  }
}

class AddressesEditAddressBottomsheetState
    extends State<AddressesEditAddressBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildAddresses(context);
  }

  /// Section Widget
  Widget _buildAddresses(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillIndigo.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              children: [
                Text(
                  "lbl_jessica_smith2".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.v),
                Text(
                  "msg_city_state_postcode".tr,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.fromLTRB(146.h, 12.v, 7.h, 11.v),
          ),
        ],
      ),
    );
  }
}
