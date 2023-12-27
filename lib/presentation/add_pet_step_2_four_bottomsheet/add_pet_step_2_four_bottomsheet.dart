import 'models/add_pet_step_2_four_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/add_pet_step_2_four_provider.dart';

// ignore_for_file: must_be_immutable
class AddPetStep2FourBottomsheet extends StatefulWidget {
  const AddPetStep2FourBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  AddPetStep2FourBottomsheetState createState() =>
      AddPetStep2FourBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddPetStep2FourProvider(),
      child: AddPetStep2FourBottomsheet(),
    );
  }
}

class AddPetStep2FourBottomsheetState
    extends State<AddPetStep2FourBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
    );
  }
}
