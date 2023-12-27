import 'models/feedback1_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_bottom_bar.dart';
import 'provider/feedback1_provider.dart';

// ignore_for_file: must_be_immutable
class Feedback1Bottomsheet extends StatefulWidget {
  const Feedback1Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Feedback1BottomsheetState createState() => Feedback1BottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Feedback1Provider(),
      child: Feedback1Bottomsheet(),
    );
  }
}

class Feedback1BottomsheetState extends State<Feedback1Bottomsheet> {
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
          SizedBox(height: 442.v),
          _buildScrollView(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 68.h,
          vertical: 16.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 50.h,
              child: Divider(
                color: theme.colorScheme.primary,
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              "lbl_version".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 26.v),
            Text(
              "msg_v1_0_7_build_date".tr,
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 20.v),
            CustomImageView(
              imagePath: ImageConstant.imgFrameBlueGray1000162x61,
              height: 62.v,
              width: 61.h,
            ),
            SizedBox(height: 8.v),
            CustomImageView(
              imagePath: ImageConstant.imgTitle,
              height: 31.v,
              width: 98.h,
            ),
            SizedBox(height: 69.v),
          ],
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
