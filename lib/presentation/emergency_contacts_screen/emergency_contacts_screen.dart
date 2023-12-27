import '../emergency_contacts_screen/widgets/emergencycontactslist_item_widget.dart';
import 'models/emergency_contacts_model.dart';
import 'models/emergencycontactslist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/emergency_contacts_provider.dart';

class EmergencyContactsScreen extends StatefulWidget {
  const EmergencyContactsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  EmergencyContactsScreenState createState() => EmergencyContactsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EmergencyContactsProvider(),
      child: EmergencyContactsScreen(),
    );
  }
}

class EmergencyContactsScreenState extends State<EmergencyContactsScreen> {
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
                "msg_emergency_contacts".tr,
                style: CustomTextStyles.titleMediumBold,
              ),
              SizedBox(height: 1.v),
              Container(
                width: 258.h,
                margin: EdgeInsets.only(right: 56.h),
                child: Text(
                  "msg_you_can_add_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallErrorContainer.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildEmergencyContactsList(context),
              Spacer(),
              SizedBox(height: 20.v),
              _buildAddNewContactFrame(context),
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
  Widget _buildEmergencyContactsList(BuildContext context) {
    return Consumer<EmergencyContactsProvider>(
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
              .emergencyContactsModelObj.emergencycontactslistItemList.length,
          itemBuilder: (context, index) {
            EmergencycontactslistItemModel model = provider
                .emergencyContactsModelObj.emergencycontactslistItemList[index];
            return EmergencycontactslistItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAddNewContactFrame(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder25,
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
          "lbl_add_new_contact".tr,
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
