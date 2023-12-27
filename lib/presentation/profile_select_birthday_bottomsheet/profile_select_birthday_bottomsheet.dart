import 'models/profile_select_birthday_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/profile_select_birthday_provider.dart';

// ignore_for_file: must_be_immutable
class ProfileSelectBirthdayBottomsheet extends StatefulWidget {
  const ProfileSelectBirthdayBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileSelectBirthdayBottomsheetState createState() =>
      ProfileSelectBirthdayBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileSelectBirthdayProvider(),
      child: ProfileSelectBirthdayBottomsheet(),
    );
  }
}

class ProfileSelectBirthdayBottomsheetState
    extends State<ProfileSelectBirthdayBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(bottom: 81.v),
        padding: EdgeInsets.symmetric(
          horizontal: 139.h,
          vertical: 25.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 70.h,
              child: Divider(
                color: theme.colorScheme.primary,
                indent: 20.h,
              ),
            ),
            SizedBox(height: 7.v),
            Text(
              "lbl_select_date".tr,
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 7.v),
          ],
        ),
      ),
    );
  }
}
