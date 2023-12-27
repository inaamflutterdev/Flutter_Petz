import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/addresses_screen/models/addresses_model.dart';import '../models/userprofile2_item_model.dart';/// A provider class for the AddressesScreen.
///
/// This provider manages the state of the AddressesScreen, including the
/// current addressesModelObj

// ignore_for_file: must_be_immutable
class AddressesProvider extends ChangeNotifier {AddressesModel addressesModelObj = AddressesModel();

@override void dispose() { super.dispose(); } 
 }
