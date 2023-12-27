import 'models/privacy_settings_documents_files_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_icon_button.dart';
import 'package:inaam_s_application1/widgets/custom_switch.dart';
import 'provider/privacy_settings_documents_files_provider.dart';

class PrivacySettingsDocumentsFilesScreen extends StatefulWidget {
  const PrivacySettingsDocumentsFilesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacySettingsDocumentsFilesScreenState createState() =>
      PrivacySettingsDocumentsFilesScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacySettingsDocumentsFilesProvider(),
      child: PrivacySettingsDocumentsFilesScreen(),
    );
  }
}

class PrivacySettingsDocumentsFilesScreenState
    extends State<PrivacySettingsDocumentsFilesScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 703.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    top: 18.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                        height: 50.v,
                        width: 52.h,
                        padding: EdgeInsets.all(13.h),
                        decoration: IconButtonStyleHelper.fillPrimaryTL10,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroupBlack900,
                        ),
                      ),
                      SizedBox(height: 25.v),
                      Text(
                        "msg_pet_name_s_privacy".tr,
                        style: CustomTextStyles.titleMedium_1,
                      ),
                      SizedBox(height: 3.v),
                      SizedBox(
                        width: 294.h,
                        child: Text(
                          "msg_you_can_control".tr,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodySmallErrorContainer.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.v),
                      Text(
                        "lbl_pet_profile".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 12.v),
                      Text(
                        "msg_emergency_contacts".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 9.v),
                      Text(
                        "lbl_medical_card".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 11.v),
                      Text(
                        "msg_documents_files".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24.h,
                    vertical: 25.v,
                  ),
                  decoration: AppDecoration.fillBlack900,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgCheckmarkOnerrorcontainer,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                  ),
                ),
              ),
              _buildPetNamePrivacyColumn(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildPetNamePrivacyColumn(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 21.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 50.h,
                child: Divider(
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.center,
              child: Text(
                "msg_documents_files".tr,
                style: theme.textTheme.titleMedium,
              ),
            ),
            SizedBox(height: 12.v),
            Container(
              width: 323.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Text(
                "msg_toggle_the_folder".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 18.v),
            Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Row(
                children: [
                  Selector<PrivacySettingsDocumentsFilesProvider, bool?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.isSelectedSwitch,
                    builder: (context, isSelectedSwitch, child) {
                      return CustomSwitch(
                        value: isSelectedSwitch,
                        onChange: (value) {
                          context
                              .read<PrivacySettingsDocumentsFilesProvider>()
                              .changeSwitchBox1(value);
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_pictures".tr,
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Row(
                children: [
                  Selector<PrivacySettingsDocumentsFilesProvider, bool?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.isSelectedSwitch1,
                    builder: (context, isSelectedSwitch1, child) {
                      return CustomSwitch(
                        value: isSelectedSwitch1,
                        onChange: (value) {
                          context
                              .read<PrivacySettingsDocumentsFilesProvider>()
                              .changeSwitchBox2(value);
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_medical_files".tr,
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Row(
                children: [
                  Selector<PrivacySettingsDocumentsFilesProvider, bool?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.isSelectedSwitch2,
                    builder: (context, isSelectedSwitch2, child) {
                      return CustomSwitch(
                        value: isSelectedSwitch2,
                        onChange: (value) {
                          context
                              .read<PrivacySettingsDocumentsFilesProvider>()
                              .changeSwitchBox3(value);
                        },
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_documents".tr,
                      style: CustomTextStyles.titleMediumGray900,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 73.v),
          ],
        ),
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
