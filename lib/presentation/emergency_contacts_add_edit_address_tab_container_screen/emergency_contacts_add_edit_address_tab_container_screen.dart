import 'models/emergency_contacts_add_edit_address_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_add_edit_address1_page/emergency_contacts_add_edit_address1_page.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_add_edit_address_page/emergency_contacts_add_edit_address_page.dart';
import 'package:inaam_s_application1/presentation/medical_cardveterinary_emergency_contacts_add_edit_page/medical_cardveterinary_emergency_contacts_add_edit_page.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/emergency_contacts_add_edit_address_tab_container_provider.dart';

class EmergencyContactsAddEditAddressTabContainerScreen extends StatefulWidget {
  const EmergencyContactsAddEditAddressTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmergencyContactsAddEditAddressTabContainerScreenState createState() =>
      EmergencyContactsAddEditAddressTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          EmergencyContactsAddEditAddressTabContainerProvider(),
      child: EmergencyContactsAddEditAddressTabContainerScreen(),
    );
  }
}

class EmergencyContactsAddEditAddressTabContainerScreenState
    extends State<EmergencyContactsAddEditAddressTabContainerScreen>
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
            children: [
              SizedBox(height: 21.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "lbl_jessica_smith2".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 23.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 529.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      MedicalCardveterinaryEmergencyContactsAddEditPage(),
                      EmergencyContactsAddEditAddress1Page(),
                      EmergencyContactsAddEditAddressPage(),
                    ],
                  ),
                ),
              ),
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
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorBlack900,
          margin: EdgeInsets.fromLTRB(34.h, 19.v, 34.h, 8.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 50.v,
      width: 315.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(
          5.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.black900,
        unselectedLabelStyle: TextStyle(
          fontSize: 15.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        indicatorPadding: EdgeInsets.all(
          5.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(
            5.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_profile".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_address".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_pets".tr,
            ),
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
}
