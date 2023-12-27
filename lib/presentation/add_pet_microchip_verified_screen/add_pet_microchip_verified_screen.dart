import 'models/add_pet_microchip_verified_model.dart';import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';import 'package:inaam_s_application1/widgets/custom_icon_button.dart';import 'provider/add_pet_microchip_verified_provider.dart';class AddPetMicrochipVerifiedScreen extends StatefulWidget {const AddPetMicrochipVerifiedScreen({Key? key}) : super(key: key);

@override AddPetMicrochipVerifiedScreenState createState() =>  AddPetMicrochipVerifiedScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => AddPetMicrochipVerifiedProvider(), child: AddPetMicrochipVerifiedScreen()); } 
 }
class AddPetMicrochipVerifiedScreenState extends State<AddPetMicrochipVerifiedScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [_buildVerifiedSection(context), Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 22.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 13.h), child: Text("lbl_step_3_7".tr, style: theme.textTheme.labelMedium)), SizedBox(height: 13.v), Padding(padding: EdgeInsets.only(left: 13.h), child: Text("lbl_microchip".tr, style: CustomTextStyles.titleMediumGray900Bold)), SizedBox(height: 7.v), Align(alignment: Alignment.center, child: Container(width: 313.h, margin: EdgeInsets.only(left: 13.h, right: 10.h), child: Text("msg_collar_tags_helps".tr, maxLines: 8, overflow: TextOverflow.ellipsis, style: CustomTextStyles.bodyMediumErrorContainer_3.copyWith(height: 1.50)))), SizedBox(height: 15.v), Padding(padding: EdgeInsets.only(left: 13.h), child: Text("msg_is_pets_name".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 12.v), _buildNo(context), SizedBox(height: 28.v), Container(width: 284.h, margin: EdgeInsets.only(left: 13.h, right: 39.h), child: Text("msg_have_you_implemented".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall!.copyWith(height: 1.71))), SizedBox(height: 9.v), _buildNo1(context), SizedBox(height: 35.v), _buildFieldSection(context), SizedBox(height: 30.v), _buildReviewSection(context), SizedBox(height: 5.v)]))])))); } 
/// Section Widget
Widget _buildVerifiedSection(BuildContext context) { return SizedBox(height: 95.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(top: 10.v), padding: EdgeInsets.symmetric(horizontal: 139.h, vertical: 5.v), decoration: AppDecoration.fillPrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 53.v), child: Text("lbl_verified".tr, style: theme.textTheme.titleMedium)), CustomImageView(imagePath: ImageConstant.imgCheckmarkBlack900, height: 20.adaptSize, width: 20.adaptSize, margin: EdgeInsets.only(left: 1.h, top: 52.v))]))), Align(alignment: Alignment.topCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(bottom: 34.v), padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v), decoration: AppDecoration.fillOnSecondaryContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(6.h), decoration: IconButtonStyleHelper.fillBlueGray, onTap: () {onTapBtnClose(context);}, child: CustomImageView(imagePath: ImageConstant.imgClose))), Container(height: 13.v, width: 201.h, margin: EdgeInsets.only(left: 46.h, top: 5.v, bottom: 7.v), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: SizedBox(height: 13.v, width: 200.h, child: ClipRRect(child: LinearProgressIndicator(value: 0)))), Align(alignment: Alignment.centerLeft, child: Container(height: 13.v, width: 150.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(6.h))))]))]))), CustomAppBar(height: 50.v, title: Container(height: 50.adaptSize, width: 50.adaptSize, margin: EdgeInsets.only(left: 14.h), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(height: 50.adaptSize, width: 50.adaptSize, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.only(topLeft: Radius.circular(10.h), bottomRight: Radius.circular(10.h))))), CustomImageView(imagePath: ImageConstant.imgMegaphone, height: 30.adaptSize, width: 30.adaptSize, alignment: Alignment.center, margin: EdgeInsets.all(10.h))])), actions: [Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 7.h, top: 13.v, bottom: 13.v), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgUserGray900, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Container(height: 8.adaptSize, width: 8.adaptSize, margin: EdgeInsets.fromLTRB(14.h, 1.v, 2.h, 15.v), decoration: BoxDecoration(color: appTheme.red400, borderRadius: BorderRadius.circular(4.h))))])), Container(height: 50.adaptSize, width: 50.adaptSize, margin: EdgeInsets.only(left: 23.h, right: 7.h), decoration: BoxDecoration(color: appTheme.blueGray10001, borderRadius: BorderRadius.circular(25.h)))])])); } 
/// Section Widget
Widget _buildNoButtonSection(BuildContext context) { return Expanded(child: CustomElevatedButton(height: 40.v, text: "lbl_no".tr, margin: EdgeInsets.only(right: 12.h), buttonStyle: CustomButtonStyles.outlineBlackTL101, buttonTextStyle: CustomTextStyles.titleSmallMedium_1)); } 
/// Section Widget
Widget _buildYesButtonSection(BuildContext context) { return Expanded(child: CustomElevatedButton(height: 40.v, text: "lbl_yes".tr, margin: EdgeInsets.only(left: 12.h), buttonStyle: CustomButtonStyles.outlineBlackBL10, buttonTextStyle: CustomTextStyles.titleSmallMedium_1)); } 
/// Section Widget
Widget _buildNo(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildNoButtonSection(context), _buildYesButtonSection(context)])); } 
/// Section Widget
Widget _buildNoButtonSection2(BuildContext context) { return Expanded(child: CustomElevatedButton(height: 40.v, text: "lbl_no".tr, margin: EdgeInsets.only(right: 12.h), buttonStyle: CustomButtonStyles.outlineBlackTL101, buttonTextStyle: CustomTextStyles.titleSmallMedium_1)); } 
/// Section Widget
Widget _buildYesButtonSection2(BuildContext context) { return Expanded(child: CustomElevatedButton(height: 40.v, text: "lbl_yes".tr, margin: EdgeInsets.only(left: 12.h), buttonStyle: CustomButtonStyles.outlineBlackBL10, buttonTextStyle: CustomTextStyles.titleSmallMedium_1)); } 
/// Section Widget
Widget _buildNo1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildNoButtonSection2(context), _buildYesButtonSection2(context)])); } 
/// Section Widget
Widget _buildFieldSection(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 17.h, right: 5.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_microchip_number".tr, style: theme.textTheme.titleSmall), SizedBox(height: 16.v), Text("msg_pets_id_tags_microchipnumber".tr, style: CustomTextStyles.bodyMediumBlack900_2), SizedBox(height: 20.v), Divider()]))); } 
/// Section Widget
Widget _buildReviewButtonSection(BuildContext context) { return Expanded(child: CustomElevatedButton(text: "lbl_review".tr, margin: EdgeInsets.only(left: 18.h))); } 
/// Section Widget
Widget _buildReviewSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 13.h), child: Row(children: [CustomIconButton(height: 50.v, width: 56.h, padding: EdgeInsets.all(13.h), decoration: IconButtonStyleHelper.outlineBlackTL10, child: CustomImageView(imagePath: ImageConstant.imgGroupBlack900)), _buildReviewButtonSection(context)])); } 

/// Navigates to the previous screen.
onTapBtnClose(BuildContext context) { NavigatorService.goBack(); } 
 }