import '../pet_profile_pets_addresses_screen/widgets/userprofile5_item_widget.dart';
import 'models/pet_profile_pets_addresses_model.dart';
import 'models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/pet_profile_pets_addresses_provider.dart';

class PetProfilePetsAddressesScreen extends StatefulWidget {
  const PetProfilePetsAddressesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfilePetsAddressesScreenState createState() =>
      PetProfilePetsAddressesScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfilePetsAddressesProvider(),
      child: PetProfilePetsAddressesScreen(),
    );
  }
}

class PetProfilePetsAddressesScreenState
    extends State<PetProfilePetsAddressesScreen> {
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
            vertical: 19.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_pet_name_s_addresses".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
              SizedBox(height: 11.v),
              Text(
                "msg_tap_to_assign_addresses".tr,
                style: CustomTextStyles.bodySmallErrorContainer,
              ),
              SizedBox(height: 26.v),
              _buildUserProfile(context),
              Spacer(),
              SizedBox(height: 20.v),
              _buildFrame(context),
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
          imagePath: ImageConstant.imgHome,
          margin: EdgeInsets.symmetric(
            horizontal: 42.h,
            vertical: 10.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Consumer<PetProfilePetsAddressesProvider>(
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
              .petProfilePetsAddressesModelObj.userprofile5ItemList.length,
          itemBuilder: (context, index) {
            Userprofile5ItemModel model = provider
                .petProfilePetsAddressesModelObj.userprofile5ItemList[index];
            return Userprofile5ItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 97.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "lbl_add_new_address".tr,
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
}
