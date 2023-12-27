import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/add_edit_vaccination_provider.dart';

// ignore_for_file: must_be_immutable
class AddEditVaccinationBottomsheet extends StatefulWidget {
  const AddEditVaccinationBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddEditVaccinationBottomsheetState createState() =>
      AddEditVaccinationBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddEditVaccinationProvider(),
      child: AddEditVaccinationBottomsheet(),
    );
  }
}

class AddEditVaccinationBottomsheetState
    extends State<AddEditVaccinationBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
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
          SizedBox(height: 8.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_add_vaccination".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 17.v),
          _buildAddEditFieldOne(context),
          SizedBox(height: 14.v),
          _buildAddEditFieldThree(context),
          SizedBox(height: 11.v),
          _buildAddEditFieldFour(context),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildAddEditFieldFive(context),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(right: 14.h),
            child: _buildAddEditFieldFive(context),
          ),
          SizedBox(height: 20.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddEditFieldOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 4.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_title2".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_enter_vaccina_name_title".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgReply,
                height: 28.v,
                width: 22.h,
                margin: EdgeInsets.only(
                  left: 65.h,
                  top: 29.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddEditFieldTwo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_vaccination_reason".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 17.v),
        Text(
          "msg_what_was_the_purpose".tr,
          style: theme.textTheme.bodyMedium,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAddEditFieldThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Column(
        children: [
          _buildAddEditFieldTwo(context),
          SizedBox(height: 20.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddEditFieldFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_vaccination_notes".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 15.v),
          Selector<AddEditVaccinationProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.pristiagmailcomController,
            builder: (context, pristiagmailcomController, child) {
              return CustomTextFormField(
                controller: pristiagmailcomController,
                hintText: "msg_any_notes_regarding3".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAddEditFieldFive(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_vaccination_date".tr,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 16.v),
        Text(
          "msg_vaccination_date".tr,
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 22.v),
        Divider(),
      ],
    );
  }
}
