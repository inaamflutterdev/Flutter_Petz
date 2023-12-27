import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/splashscreen_screen/models/splashscreen_model.dart';/// A provider class for the SplashscreenScreen.
///
/// This provider manages the state of the SplashscreenScreen, including the
/// current splashscreenModelObj

// ignore_for_file: must_be_immutable
class SplashscreenProvider extends ChangeNotifier {SplashscreenModel splashscreenModelObj = SplashscreenModel();

@override void dispose() { super.dispose(); } 
 }
