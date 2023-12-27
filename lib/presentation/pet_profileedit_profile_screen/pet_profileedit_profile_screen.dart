import '../pet_profileedit_profile_screen/widgets/line_item_widget.dart';
import 'models/line_item_model.dart';
import 'models/pet_profileedit_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/pet_profileedit_profile_provider.dart';

class PetProfileeditProfileScreen extends StatefulWidget {
  const PetProfileeditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfileeditProfileScreenState createState() =>
      PetProfileeditProfileScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfileeditProfileProvider(),
      child: PetProfileeditProfileScreen(),
    );
  }
}

class PetProfileeditProfileScreenState
    extends State<PetProfileeditProfileScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 28.h,
                      right: 28.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "lbl_maylo_s_profile".tr,
                              style: CustomTextStyles.titleMediumBold,
                            ),
                          ),
                        ),
                        SizedBox(height: 2.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 2.h),
                            child: Text(
                              "msg_make_sure_your_profile".tr,
                              style: CustomTextStyles.bodySmallErrorContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.v),
                        _buildEmail(context),
                        SizedBox(height: 14.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 291.h,
                            margin: EdgeInsets.only(
                              left: 5.h,
                              right: 22.h,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_any_behavioral_or2".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  TextSpan(
                                    text: "msg_distinctive_markings2".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  TextSpan(
                                    text: " ",
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        SizedBox(height: 5.v),
                        Divider(),
                        SizedBox(height: 13.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 5.h,
                              right: 74.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "lbl_pet_type".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                                Text(
                                  "lbl_pet_type".tr,
                                  style: theme.textTheme.titleSmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildLine(context),
                        SizedBox(height: 13.v),
                        _buildField1(context),
                        SizedBox(height: 11.v),
                        _buildField2(context),
                        SizedBox(height: 11.v),
                        _buildMap(context),
                        SizedBox(height: 13.v),
                        _buildEmail1(context),
                        SizedBox(height: 13.v),
                        _buildEmail2(context),
                        SizedBox(height: 26.v),
                        _buildFrame(context),
                      ],
                    ),
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
          imagePath: ImageConstant.imgUserBlueGray10001,
          margin: EdgeInsets.fromLTRB(30.h, 16.v, 30.h, 4.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_name".tr,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 17.v),
                Text(
                  "lbl_maylo".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 20.v),
                SizedBox(
                  width: 137.h,
                  child: Divider(),
                ),
                SizedBox(height: 13.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "msg_personality_about".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameBlueGray1000171x71,
                  height: 71.adaptSize,
                  width: 71.adaptSize,
                ),
                SizedBox(
                  width: 85.h,
                  child: Text(
                    "msg_change_profile_picture".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.labelLargeGray900.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLine(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 2.h,
      ),
      child: Consumer<PetProfileeditProfileProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 41.v,
              crossAxisCount: 4,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                provider.petProfileeditProfileModelObj.lineItemList.length,
            itemBuilder: (context, index) {
              LineItemModel model =
                  provider.petProfileeditProfileModelObj.lineItemList[index];
              return LineItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildField1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_birthday".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 14.v),
          Selector<PetProfileeditProfileProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.dateController,
            builder: (context, dateController, child) {
              return CustomTextFormField(
                controller: dateController,
                hintText: "msg_19_december_1977".tr,
                hintStyle: theme.textTheme.bodyMedium!,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildField2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_breed".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 10.v),
          Selector<PetProfileeditProfileProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.settingsController,
            builder: (context, settingsController, child) {
              return CustomTextFormField(
                controller: settingsController,
                hintText: "msg_american_terrier".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                suffix: Container(
                  margin: EdgeInsets.only(
                    left: 30.h,
                    bottom: 19.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSettingsBlack900,
                    height: 27.v,
                    width: 24.h,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 47.v,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: 135.h,
                margin: EdgeInsets.only(right: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_color".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 16.v),
                          Text(
                            "lbl_black_yellow".tr,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsBlack90024x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 30.v),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.v),
              SizedBox(
                width: 137.h,
                child: Divider(),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_size".tr,
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 14.v),
              Selector<PetProfileeditProfileProvider, TextEditingController?>(
                selector: (
                  context,
                  provider,
                ) =>
                    provider.mapController,
                builder: (context, mapController, child) {
                  return CustomTextFormField(
                    width: 135.h,
                    controller: mapController,
                    hintText: "lbl_large".tr,
                    hintStyle: theme.textTheme.bodyMedium!,
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.only(
                        left: 30.h,
                        right: 3.h,
                        bottom: 21.v,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMap,
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 43.v,
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 20.h),
            child: _buildField(context),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: _buildField(context),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 5.h,
        right: 2.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 21.h),
              child: Column(
                children: [
                  SizedBox(
                    width: 135.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_ear_type".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 14.v),
                              Text(
                                "lbl_select".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorBlack90022x24,
                          height: 22.v,
                          width: 24.h,
                          margin: EdgeInsets.only(top: 29.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  SizedBox(
                    width: 135.h,
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: Column(
                children: [
                  Container(
                    width: 131.h,
                    margin: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 2.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_weight".tr,
                                style: theme.textTheme.titleSmall,
                              ),
                              SizedBox(height: 14.v),
                              Text(
                                "lbl_select".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUserBlack900,
                          height: 24.v,
                          width: 20.h,
                          margin: EdgeInsets.only(top: 28.v),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.v),
                  SizedBox(
                    width: 135.h,
                    child: Divider(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 140.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "lbl_save".tr,
          style: CustomTextStyles.titleSmallGray900,
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

  /// Common widget
  Widget _buildField(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_tail_type".tr,
              style: theme.textTheme.titleSmall,
            ),
            SizedBox(height: 14.v),
            Text(
              "lbl_select".tr,
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 22.v),
            SizedBox(
              width: 135.h,
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
