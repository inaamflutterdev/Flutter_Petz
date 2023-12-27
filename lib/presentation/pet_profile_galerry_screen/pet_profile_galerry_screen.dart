import '../pet_profile_galerry_screen/widgets/rectanglegrid_item_widget.dart';
import 'models/pet_profile_galerry_model.dart';
import 'models/rectanglegrid_item_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/pet_profile_galerry_provider.dart';

class PetProfileGalerryScreen extends StatefulWidget {
  const PetProfileGalerryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfileGalerryScreenState createState() => PetProfileGalerryScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfileGalerryProvider(),
      child: PetProfileGalerryScreen(),
    );
  }
}

class PetProfileGalerryScreenState extends State<PetProfileGalerryScreen> {
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
            horizontal: 29.h,
            vertical: 27.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    "msg_pet_name_s_picture".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildTwitterRow(context),
              SizedBox(height: 23.v),
              _buildRectangleGrid(context),
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
      height: 67.v,
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgGroupBlack900,
        margin: EdgeInsets.fromLTRB(44.h, 13.v, 306.h, 13.v),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildTwitterRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      decoration: AppDecoration.outlineBlack9003.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: DottedBorder(
        color: appTheme.black900,
        padding: EdgeInsets.only(
          left: 1.h,
          top: 1.v,
          right: 1.h,
          bottom: 1.v,
        ),
        strokeWidth: 1.h,
        radius: Radius.circular(10),
        borderType: BorderType.RRect,
        dashPattern: [
          10,
          10,
        ],
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 101.h,
            vertical: 32.v,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgTwitter,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(bottom: 2.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 5.v,
                  right: 1.h,
                ),
                child: Text(
                  "lbl_upload_picture".tr,
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRectangleGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Consumer<PetProfileGalerryProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 101.v,
              crossAxisCount: 3,
              mainAxisSpacing: 8.h,
              crossAxisSpacing: 8.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount:
                provider.petProfileGalerryModelObj.rectanglegridItemList.length,
            itemBuilder: (context, index) {
              RectanglegridItemModel model = provider
                  .petProfileGalerryModelObj.rectanglegridItemList[index];
              return RectanglegridItemWidget(
                model,
              );
            },
          );
        },
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
