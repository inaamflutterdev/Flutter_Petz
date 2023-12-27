import 'models/feedback_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/feedback_provider.dart';

// ignore_for_file: must_be_immutable
class FeedbackBottomsheet extends StatefulWidget {
  const FeedbackBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  FeedbackBottomsheetState createState() => FeedbackBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FeedbackProvider(),
      child: FeedbackBottomsheet(),
    );
  }
}

class FeedbackBottomsheetState extends State<FeedbackBottomsheet> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Spacer(),
          _buildFeedbackSection(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFeedbackSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 13.v,
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
          SizedBox(height: 7.v),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_feedback".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "msg_send_us_your_feedback".tr,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ),
          SizedBox(height: 96.v),
          Padding(
            padding: EdgeInsets.only(right: 11.h),
            child: Selector<FeedbackProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.feedbackvalueController,
              builder: (context, feedbackvalueController, child) {
                return CustomTextFormField(
                  controller: feedbackvalueController,
                  hintText: "msg_i_love_pets_id".tr,
                  hintStyle: CustomTextStyles.bodySmallOnError,
                  textInputAction: TextInputAction.done,
                );
              },
            ),
          ),
          SizedBox(height: 34.v),
          Container(
            margin: EdgeInsets.only(
              left: 4.h,
              right: 5.h,
            ),
            decoration: AppDecoration.outlineBlack900.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 139.h,
                vertical: 15.v,
              ),
              decoration: AppDecoration.fillPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL10,
              ),
              child: Text(
                "lbl_send".tr,
                style: CustomTextStyles.titleSmallGray900,
              ),
            ),
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBarSection(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
