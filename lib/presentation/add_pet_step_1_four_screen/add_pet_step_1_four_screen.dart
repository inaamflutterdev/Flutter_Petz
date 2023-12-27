import '../add_pet_step_1_four_screen/widgets/userprofile_item_widget.dart';import 'models/add_pet_step_1_four_model.dart';import 'models/userprofile_item_model.dart';import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';import 'package:inaam_s_application1/widgets/custom_icon_button.dart';import 'provider/add_pet_step_1_four_provider.dart';class AddPetStep1FourScreen extends StatefulWidget {const AddPetStep1FourScreen({Key? key}) : super(key: key);

@override AddPetStep1FourScreenState createState() =>  AddPetStep1FourScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddPetStep1FourProvider(), child: AddPetStep1FourScreen()); } 
 }
class AddPetStep1FourScreenState extends State<AddPetStep1FourScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildVideoCamera(context), Container(padding: EdgeInsets.all(19.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 3.v), Padding(padding: EdgeInsets.only(left: 11.h), child: Text("lbl_step_1_4".tr, style: theme.textTheme.labelMedium)), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 11.h), child: Text("msg_first_things_first".tr, style: CustomTextStyles.titleMediumGray900Bold)), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 11.h), child: Text("msg_identify_your_pet".tr, style: CustomTextStyles.bodyMediumErrorContainer_3)), SizedBox(height: 17.v), _buildPetType(context), SizedBox(height: 10.v), Align(alignment: Alignment.center, child: Divider(indent: 11.h, endIndent: 11.h)), SizedBox(height: 16.v), _buildField(context), SizedBox(height: 11.v), _buildUserProfile(context)]))])), bottomNavigationBar: _buildFrame(context))); } 
/// Section Widget
Widget _buildVideoCamera(BuildContext context) { return SizedBox(height: 95.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(top: 10.v), padding: EdgeInsets.symmetric(horizontal: 65.h, vertical: 7.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgVideoCameraBlack900, height: 17.v, width: 24.h, margin: EdgeInsets.only(top: 52.v)), Padding(padding: EdgeInsets.only(top: 52.v, right: 1.h), child: Text("msg_not_connected_to".tr, style: CustomTextStyles.labelLargeMedium))]))), Align(alignment: Alignment.topCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(bottom: 34.v), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v), decoration: AppDecoration.outlineBlack9001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlueGray, onTap: () {onTapBtnClose(context);}, child: CustomImageView(imagePath: ImageConstant.imgClose))), Padding(padding: EdgeInsets.only(top: 5.v, right: 53.h, bottom: 7.v), child: Container(height: 13.v, width: 200.h, decoration: BoxDecoration(color: appTheme.amber100, borderRadius: BorderRadius.circular(6.h)), child: ClipRRect(borderRadius: BorderRadius.circular(6.h), child: LinearProgressIndicator(value: 0.25, backgroundColor: appTheme.amber100, valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary)))))]))), CustomAppBar(height: 50.v, title: Container(height: 50.adaptSize, width: 50.adaptSize, margin: EdgeInsets.only(left: 14.h), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(height: 50.adaptSize, width: 50.adaptSize, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.only(topLeft: Radius.circular(10.h), bottomRight: Radius.circular(10.h))))), CustomImageView(imagePath: ImageConstant.imgMegaphone, height: 30.adaptSize, width: 30.adaptSize, alignment: Alignment.center, margin: EdgeInsets.all(10.h))])), actions: [Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 7.h, top: 13.v, bottom: 13.v), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgUserGray900, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 8.adaptSize, width: 8.adaptSize, margin: EdgeInsets.fromLTRB(14.h, 1.v, 2.h, 15.v), decoration: BoxDecoration(color: appTheme.red400, borderRadius: BorderRadius.circular(4.h))))])), Container(height: 50.adaptSize, width: 50.adaptSize, margin: EdgeInsets.only(left: 23.h, right: 7.h), decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(25.h)))])])); } 
/// Section Widget
Widget _buildPetType(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 11.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 45.v, bottom: 40.v), child: Text("lbl_pet_type".tr, style: theme.textTheme.titleSmall)), Column(crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 86.v, width: 134.h, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgFrameBlueGray100, height: 63.v, width: 62.h, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 6.v)), CustomImageView(imagePath: ImageConstant.imgFrameBlueGray1000178x78, height: 78.adaptSize, width: 78.adaptSize, alignment: Alignment.topLeft), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 15.h), child: Text("lbl_cat".tr, style: CustomTextStyles.bodySmallErrorContainer11)))])), Padding(padding: EdgeInsets.only(left: 26.h), child: Text("lbl_dog".tr, style: CustomTextStyles.bodySmallGray900))])])); } 
/// Section Widget
Widget _buildField(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 11.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_breed".tr, style: theme.textTheme.titleSmall), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(right: 12.h), child: Row(children: [Padding(padding: EdgeInsets.only(top: 5.v, bottom: 3.v), child: Text("lbl_select".tr, style: CustomTextStyles.bodyMediumGray800)), CustomImageView(imagePath: ImageConstant.imgSettingsBlack900, height: 27.v, width: 24.h, margin: EdgeInsets.only(left: 234.h))])), SizedBox(height: 18.v), Divider()]))); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Consumer<AddPetStep1FourProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 11.5.v), child: SizedBox(width: 315.h, child: Divider(height: 1.v, thickness: 1.v, color: theme.colorScheme.primary)));}, itemCount: provider.addPetStep1FourModelObj.userprofileItemList.length, itemBuilder: (context, index) {UserprofileItemModel model = provider.addPetStep1FourModelObj.userprofileItemList[index]; return UserprofileItemWidget(model);});}))); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(margin: EdgeInsets.only(bottom: 16.v), padding: EdgeInsets.symmetric(horizontal: 28.h), child: CustomElevatedButton(text: "lbl_next".tr, buttonStyle: CustomButtonStyles.fillPrimaryTL10)); } 

/// Navigates to the previous screen.
onTapBtnClose(BuildContext context) { NavigatorService.goBack(); } 
 }