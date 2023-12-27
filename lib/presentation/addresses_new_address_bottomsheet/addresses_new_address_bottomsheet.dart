import 'models/addresses_new_address_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/addresses_new_address_provider.dart';

// ignore_for_file: must_be_immutable
class AddressesNewAddressBottomsheet extends StatefulWidget {
  const AddressesNewAddressBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddressesNewAddressBottomsheetState createState() =>
      AddressesNewAddressBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddressesNewAddressProvider(),
      child: AddressesNewAddressBottomsheet(),
    );
  }
}

class AddressesNewAddressBottomsheetState
    extends State<AddressesNewAddressBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildProfileAddressRow(context);
  }

  /// Section Widget
  Widget _buildProfileAddressRow(BuildContext context) {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_profile_address".tr,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 10.v),
                Text(
                  "msg_wahington_dc_20006".tr,
                  style: CustomTextStyles.bodySmallErrorContainer10,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEditBlack900,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.fromLTRB(132.h, 12.v, 7.h, 11.v),
          ),
        ],
      ),
    );
  }
}
