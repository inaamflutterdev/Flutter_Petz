import '../privacy_settings_screen/widgets/privacysettingslist_item_widget.dart';
import 'models/privacy_settings_model.dart';
import 'models/privacysettingslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/privacy_settings_provider.dart';

class PrivacySettingsScreen extends StatefulWidget {
  const PrivacySettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacySettingsScreenState createState() => PrivacySettingsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacySettingsProvider(),
      child: PrivacySettingsScreen(),
    );
  }
}

class PrivacySettingsScreenState extends State<PrivacySettingsScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 22.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_privacy_settings".tr,
                style: CustomTextStyles.titleMedium_1,
              ),
              SizedBox(height: 1.v),
              Text(
                "msg_select_the_pet_to".tr,
                style: CustomTextStyles.bodySmallErrorContainer,
              ),
              SizedBox(height: 17.v),
              _buildPrivacySettingsList(context),
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
          imagePath: ImageConstant.imgCheckmarkOnerrorcontainer,
          margin: EdgeInsets.symmetric(
            horizontal: 28.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPrivacySettingsList(BuildContext context) {
    return Consumer<PrivacySettingsProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 18.v,
            );
          },
          itemCount: provider
              .privacySettingsModelObj.privacysettingslistItemList.length,
          itemBuilder: (context, index) {
            PrivacysettingslistItemModel model = provider
                .privacySettingsModelObj.privacysettingslistItemList[index];
            return PrivacysettingslistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
