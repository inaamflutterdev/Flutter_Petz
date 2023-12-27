import 'models/history_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_pets_history_page/pet_profile_pets_history_page.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/history_tab_container_provider.dart';

class HistoryTabContainerScreen extends StatefulWidget {
  const HistoryTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryTabContainerScreenState createState() =>
      HistoryTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryTabContainerProvider(),
      child: HistoryTabContainerScreen(),
    );
  }
}

class HistoryTabContainerScreenState extends State<HistoryTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 19.v),
              Padding(
                padding: EdgeInsets.only(left: 30.h),
                child: Text(
                  "msg_pets_id_scan_search".tr,
                  style: CustomTextStyles.titleMediumBold,
                ),
              ),
              SizedBox(height: 1.v),
              Container(
                width: 260.h,
                margin: EdgeInsets.only(left: 30.h),
                child: Text(
                  "msg_you_can_see_the".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              _buildButton(context),
              SizedBox(height: 18.v),
              _buildTabview(context),
              _buildTabBarView(context),
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
      leadingWidth: 82.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroupBlack900,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 3.v,
          bottom: 3.v,
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgClockBlack900,
          margin: EdgeInsets.symmetric(
            horizontal: 29.h,
            vertical: 12.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(
          horizontal: 34.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.outlineIndigo.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "msg_you_have_unverified".tr,
              style: CustomTextStyles.titleSmallUrbanistWhiteA700,
            ),
            SizedBox(height: 7.v),
            CustomElevatedButton(
              height: 36.v,
              text: "msg_buy_identification".tr,
              margin: EdgeInsets.symmetric(horizontal: 37.h),
              buttonStyle: CustomButtonStyles.fillPrimaryTL18,
              buttonTextStyle: theme.textTheme.titleSmall!,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 315.h,
      decoration: BoxDecoration(
        color: appTheme.blueGray10001,
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          5.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: SizedBox(
              width: 41.h,
              child: Text(
                "lbl_tag_scans".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 68.h,
              child: Text(
                "msg_microchip_search".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Tab(
            child: SizedBox(
              width: 50.h,
              child: Text(
                "lbl_vet_access".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 385.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          PetProfilePetsHistoryPage(),
          PetProfilePetsHistoryPage(),
          PetProfilePetsHistoryPage(),
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
}
