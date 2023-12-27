import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/addresses_new_address_bottomsheet/models/addresses_new_address_model.dart';

/// A provider class for the AddressesNewAddressBottomsheet.
///
/// This provider manages the state of the AddressesNewAddressBottomsheet, including the
/// current addressesNewAddressModelObj
class AddressesNewAddressProvider extends ChangeNotifier {
  AddressesNewAddressModel addressesNewAddressModelObj =
      AddressesNewAddressModel();

  @override
  void dispose() {
    super.dispose();
  }
}
