import 'models/pet_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'provider/pet_profile_provider.dart';

// ignore_for_file: must_be_immutable
class PetProfileBottomsheet extends StatefulWidget {
  const PetProfileBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfileBottomsheetState createState() => PetProfileBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfileProvider(),
      child: PetProfileBottomsheet(),
    );
  }
}

class PetProfileBottomsheetState extends State<PetProfileBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomElevatedButton(
        width: 315.h,
        text: "lbl_medical_card".tr,
        margin: EdgeInsets.only(
          left: 30.h,
          right: 30.h,
          bottom: 538.v,
        ),
        buttonStyle: CustomButtonStyles.fillPrimaryTL10,
        buttonTextStyle: theme.textTheme.titleMedium!,
      ),
    );
  }
}
