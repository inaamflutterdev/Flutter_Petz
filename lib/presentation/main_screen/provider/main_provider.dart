import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/main_screen/models/main_model.dart';import '../models/userprofile1_item_model.dart';/// A provider class for the MainScreen.
///
/// This provider manages the state of the MainScreen, including the
/// current mainModelObj

// ignore_for_file: must_be_immutable
class MainProvider extends ChangeNotifier {MainModel mainModelObj = MainModel();

@override void dispose() { super.dispose(); } 
 }
