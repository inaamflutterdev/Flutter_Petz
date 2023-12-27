import '../conditions_add_edit_bottomsheet/widgets/no_item_widget.dart';
import 'models/conditions_add_edit_model.dart';
import 'models/no_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/conditions_add_edit_provider.dart';

// ignore_for_file: must_be_immutable
class ConditionsAddEditBottomsheet extends StatefulWidget {
  const ConditionsAddEditBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ConditionsAddEditBottomsheetState createState() =>
      ConditionsAddEditBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ConditionsAddEditProvider(),
      child: ConditionsAddEditBottomsheet(),
    );
  }
}

class ConditionsAddEditBottomsheetState
    extends State<ConditionsAddEditBottomsheet> {
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
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 4.v),
          SizedBox(
            width: 184.h,
            child: Divider(
              color: theme.colorScheme.primary,
              indent: 134.h,
            ),
          ),
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_add_condition".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 9.v),
          _buildFieldOne(context),
          SizedBox(height: 9.v),
          _buildFieldTwo(context),
          SizedBox(height: 12.v),
          _buildFieldThree(context),
          SizedBox(height: 14.v),
          _buildFieldFour(context),
          SizedBox(height: 11.v),
          _buildFieldFive(context),
          SizedBox(height: 8.v),
          _buildButtonOne(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldOne(BuildContext context) {
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
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_title2".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        "msg_enter_condition".tr,
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
                  left: 47.h,
                  top: 30.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_diagnosed_by".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 15.v),
          Selector<ConditionsAddEditProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.pristiagmailcomController,
            builder: (context, pristiagmailcomController, child) {
              return CustomTextFormField(
                controller: pristiagmailcomController,
                hintText: "msg_who_diagnosed_this".tr,
                hintStyle: theme.textTheme.bodyMedium!,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_condition_notes".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 16.v),
          Selector<ConditionsAddEditProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.pristiagmailcomController1,
            builder: (context, pristiagmailcomController1, child) {
              return CustomTextFormField(
                controller: pristiagmailcomController1,
                hintText: "msg_any_notes_regarding2".tr,
                hintStyle: theme.textTheme.bodyMedium!,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldFour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 302.h,
            margin: EdgeInsets.only(right: 13.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_is_this_condition2".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  TextSpan(
                    text: "msg_i_e_persisting".tr,
                    style: CustomTextStyles.bodySmallOnErrorContainer,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Consumer<ConditionsAddEditProvider>(
              builder: (context, provider, child) {
                return Wrap(
                  runSpacing: 15.v,
                  spacing: 15.h,
                  children: List<Widget>.generate(
                    provider.conditionsAddEditModelObj.noItemList.length,
                    (index) {
                      NoItemModel model =
                          provider.conditionsAddEditModelObj.noItemList[index];

                      return NoItemWidget(
                        model,
                        onSelectedChipView1: (value) {
                          provider.onSelectedChipView1(index, value);
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 24.v),
          Divider(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFieldFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 4.h,
        right: 10.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_condition_date".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 17.v),
          Selector<ConditionsAddEditProvider, TextEditingController?>(
            selector: (
              context,
              provider,
            ) =>
                provider.dateController,
            builder: (context, dateController, child) {
              return CustomTextFormField(
                controller: dateController,
                hintText: "lbl_july_25_2022".tr,
                hintStyle: theme.textTheme.bodyMedium!,
                textInputAction: TextInputAction.done,
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 13.h),
      decoration: AppDecoration.outlineBlack900.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL10,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 106.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL10,
        ),
        child: Text(
          "lbl_save_condition".tr,
          style: CustomTextStyles.titleSmallGray900,
        ),
      ),
    );
  }
}
