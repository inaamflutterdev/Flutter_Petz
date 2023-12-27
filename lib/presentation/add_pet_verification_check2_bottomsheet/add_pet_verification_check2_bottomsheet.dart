import 'models/add_pet_verification_check2_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/add_pet_verification_check2_provider.dart';

// ignore_for_file: must_be_immutable
class AddPetVerificationCheck2Bottomsheet extends StatefulWidget {
  const AddPetVerificationCheck2Bottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddPetVerificationCheck2BottomsheetState createState() =>
      AddPetVerificationCheck2BottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddPetVerificationCheck2Provider(),
      child: AddPetVerificationCheck2Bottomsheet(),
    );
  }
}

class AddPetVerificationCheck2BottomsheetState
    extends State<AddPetVerificationCheck2Bottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 50.h,
            child: Divider(
              color: theme.colorScheme.primary,
            ),
          ),
          SizedBox(height: 7.v),
          Text(
            "msg_scan_the_qr_code".tr,
            style: CustomTextStyles.titleMediumGray900Bold,
          ),
          SizedBox(height: 18.v),
          Container(
            height: 403.v,
            width: 316.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray10001,
              borderRadius: BorderRadius.circular(
                15.h,
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Text(
            "msg_verify_your_pets_id".tr,
            style: CustomTextStyles.titleSmallBlack900_1,
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_please_scan_your".tr,
            style: CustomTextStyles.bodyMediumBlack900,
          ),
          SizedBox(height: 16.v),
          CustomElevatedButton(
            text: "lbl_later".tr,
            buttonStyle: CustomButtonStyles.outlineBlackTL101,
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
