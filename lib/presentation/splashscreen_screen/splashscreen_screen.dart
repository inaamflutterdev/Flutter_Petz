import 'models/splashscreen_model.dart';import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'provider/splashscreen_provider.dart';class SplashscreenScreen extends StatefulWidget {const SplashscreenScreen({Key? key}) : super(key: key);

@override SplashscreenScreenState createState() =>  SplashscreenScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SplashscreenProvider(), child: SplashscreenScreen()); } 
 }
class SplashscreenScreenState extends State<SplashscreenScreen> {@override void initState() { super.initState();Future.delayed(const Duration(milliseconds: 3000), (){
NavigatorService.popAndPushNamed(AppRoutes.onboardingOneScreen, );}); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: appTheme.black900, body: Container(width: double.maxFinite, padding: EdgeInsets.only(top: 210.v), child: Column(children: [SizedBox(height: 10.v), CustomImageView(imagePath: ImageConstant.imgFrame, height: 240.v, width: 202.h)])))); } 
 }
