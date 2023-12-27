import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/addresses_edit_address_bottomsheet/models/addresses_edit_address_model.dart';

/// A provider class for the AddressesEditAddressBottomsheet.
///
/// This provider manages the state of the AddressesEditAddressBottomsheet, including the
/// current addressesEditAddressModelObj
class AddressesEditAddressProvider extends ChangeNotifier {
  AddressesEditAddressModel addressesEditAddressModelObj =
      AddressesEditAddressModel();

  @override
  void dispose() {
    super.dispose();
  }
}
