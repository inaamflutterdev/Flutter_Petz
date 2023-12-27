import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/main_one_screen/models/main_one_model.dart';import '../models/userprofile4_item_model.dart';/// A provider class for the MainOneScreen.
///
/// This provider manages the state of the MainOneScreen, including the
/// current mainOneModelObj

// ignore_for_file: must_be_immutable
class MainOneProvider extends ChangeNotifier {MainOneModel mainOneModelObj = MainOneModel();

@override void dispose() { super.dispose(); } 
 }
