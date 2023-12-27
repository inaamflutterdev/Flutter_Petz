import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenState createState() => HomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomeScreen(),
    );
  }
}

class HomeScreenState extends State<HomeScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 107.v),
          child: Column(
            children: [
              _buildPopup(context),
              SizedBox(height: 2.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: _buildFrame(
                  context,
                  labelText: "msg_order_identification".tr,
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 64.v,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgFrameBlueGray10001,
        margin: EdgeInsets.only(left: 17.h),
      ),
      actions: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 32.h,
            vertical: 19.v,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserGray900,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 8.adaptSize,
                  width: 8.adaptSize,
                  margin: EdgeInsets.fromLTRB(14.h, 1.v, 2.h, 15.v),
                  decoration: BoxDecoration(
                    color: appTheme.deepOrange400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPopup(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          SizedBox(height: 22.v),
          Text(
            "lbl_hello".tr,
            style: CustomTextStyles.titleMediumGray900Bold,
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_you_do_not_have".tr,
            style: CustomTextStyles.bodyMediumErrorContainer_3,
          ),
          SizedBox(height: 19.v),
          _buildFrame(
            context,
            labelText: "lbl_add_pet".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String labelText,
  }) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 80.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillBlack.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          labelText,
          style: CustomTextStyles.titleSmallPrimary.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
