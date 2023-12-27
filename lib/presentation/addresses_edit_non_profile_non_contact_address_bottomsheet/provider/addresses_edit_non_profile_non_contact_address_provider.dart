import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/addresses_edit_non_profile_non_contact_address_bottomsheet/models/addresses_edit_non_profile_non_contact_address_model.dart';

/// A provider class for the AddressesEditNonProfileNonContactAddressBottomsheet.
///
/// This provider manages the state of the AddressesEditNonProfileNonContactAddressBottomsheet, including the
/// current addressesEditNonProfileNonContactAddressModelObj
class AddressesEditNonProfileNonContactAddressProvider extends ChangeNotifier {
  AddressesEditNonProfileNonContactAddressModel
      addressesEditNonProfileNonContactAddressModelObj =
      AddressesEditNonProfileNonContactAddressModel();

  @override
  void dispose() {
    super.dispose();
  }
}
