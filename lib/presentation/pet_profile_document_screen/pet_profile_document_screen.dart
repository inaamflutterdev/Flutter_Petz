import 'models/pet_profile_document_model.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:inaam_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_drop_down.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/pet_profile_document_provider.dart';

class PetProfileDocumentScreen extends StatefulWidget {
  const PetProfileDocumentScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfileDocumentScreenState createState() =>
      PetProfileDocumentScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfileDocumentProvider(),
      child: PetProfileDocumentScreen(),
    );
  }
}

class PetProfileDocumentScreenState extends State<PetProfileDocumentScreen> {
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(27.h),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "msg_pet_name_s_documents".tr,
                    style: CustomTextStyles.titleMediumBold,
                  ),
                ),
              ),
              SizedBox(height: 16.v),
              _buildTwitterRow(context),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.h),
                child: Selector<PetProfileDocumentProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomTextFormField(
                      controller: searchController,
                      hintText: "lbl_search_files".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 17.h,
                        vertical: 11.v,
                      ),
                      borderDecoration:
                          TextFormFieldStyleHelper.fillSecondaryContainer,
                      filled: true,
                      fillColor: theme.colorScheme.secondaryContainer,
                    );
                  },
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(right: 6.h),
                child: Selector<PetProfileDocumentProvider,
                    PetProfileDocumentModel?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.petProfileDocumentModelObj,
                  builder: (context, petProfileDocumentModelObj, child) {
                    return CustomDropDown(
                      hintText: "msg_document_pdf_4_days".tr,
                      items: petProfileDocumentModelObj?.dropdownItemList ?? [],
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(16.h, 11.v, 15.h, 9.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgFile,
                          height: 29.v,
                          width: 24.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 50.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        top: 7.v,
                        right: 30.h,
                        bottom: 7.v,
                      ),
                      borderDecoration: DropDownStyleHelper.fillBlueGray,
                      fillColor: appTheme.blueGray10001,
                      onChanged: (value) {
                        context
                            .read<PetProfileDocumentProvider>()
                            .onSelected(value);
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 15.v),
              _buildDurationColumn(context),
              SizedBox(height: 5.v),
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
      margin: EdgeInsets.symmetric(horizontal: 3.h),
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
                  right: 11.h,
                ),
                child: Text(
                  "lbl_upload_file".tr,
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
  Widget _buildDurationColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.h),
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Selector<PetProfileDocumentProvider, PetProfileDocumentModel?>(
            selector: (
              context,
              provider,
            ) =>
                provider.petProfileDocumentModelObj,
            builder: (context, petProfileDocumentModelObj, child) {
              return CustomDropDown(
                hintText: "msg_document_pdf_4_days".tr,
                items: petProfileDocumentModelObj?.dropdownItemList1 ?? [],
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(13.h, 2.v, 15.h, 10.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFile,
                    height: 29.v,
                    width: 24.h,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 42.v,
                ),
                contentPadding: EdgeInsets.only(right: 30.h),
                borderDecoration: DropDownStyleHelper.underLinePrimary,
                filled: false,
                onChanged: (value) {
                  context.read<PetProfileDocumentProvider>().onSelected1(value);
                },
              );
            },
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 17.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                    height: 20.v,
                    width: 21.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgQuestion,
                    height: 20.v,
                    width: 25.h,
                    margin: EdgeInsets.only(
                      left: 22.h,
                      top: 1.v,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbsUpBlack900,
                    height: 20.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 1.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 3.v),
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
