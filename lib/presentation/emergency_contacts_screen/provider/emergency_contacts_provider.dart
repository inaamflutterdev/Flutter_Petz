import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/emergency_contacts_screen/models/emergency_contacts_model.dart';import '../models/emergencycontactslist_item_model.dart';/// A provider class for the EmergencyContactsScreen.
///
/// This provider manages the state of the EmergencyContactsScreen, including the
/// current emergencyContactsModelObj

// ignore_for_file: must_be_immutable
class EmergencyContactsProvider extends ChangeNotifier {EmergencyContactsModel emergencyContactsModelObj = EmergencyContactsModel();

@override void dispose() { super.dispose(); } 
 }
