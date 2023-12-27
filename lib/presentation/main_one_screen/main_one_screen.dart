import '../main_one_screen/widgets/userprofile4_item_widget.dart';
import 'models/main_one_model.dart';
import 'models/userprofile4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_title_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/main_one_provider.dart';

class MainOneScreen extends StatefulWidget {
  const MainOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MainOneScreenState createState() => MainOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MainOneProvider(),
      child: MainOneScreen(),
    );
  }
}

class MainOneScreenState extends State<MainOneScreen> {
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
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              _buildUserProfile(context),
              Spacer(),
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
      height: 63.v,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgFrameBlueGray10001,
        margin: EdgeInsets.only(left: 22.h),
      ),
      actions: [
        Container(
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 40.h,
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
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.h),
      child: Consumer<MainOneProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 17.v,
              );
            },
            itemCount: provider.mainOneModelObj.userprofile4ItemList.length,
            itemBuilder: (context, index) {
              Userprofile4ItemModel model =
                  provider.mainOneModelObj.userprofile4ItemList[index];
              return Userprofile4ItemWidget(
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
