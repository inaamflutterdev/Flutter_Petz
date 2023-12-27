import 'models/pets_allergies_add_edit_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/pets_allergies_add_edit_provider.dart';

// ignore_for_file: must_be_immutable
class PetsAllergiesAddEditBottomsheet extends StatefulWidget {
  const PetsAllergiesAddEditBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  PetsAllergiesAddEditBottomsheetState createState() =>
      PetsAllergiesAddEditBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetsAllergiesAddEditProvider(),
      child: PetsAllergiesAddEditBottomsheet(),
    );
  }
}

class PetsAllergiesAddEditBottomsheetState
    extends State<PetsAllergiesAddEditBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildPetsAllergiesButton(context);
  }

  /// Section Widget
  Widget _buildPetsAllergiesButton(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 50.v,
            width: 261.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 14.v,
                    ),
                    child: Text(
                      "msg_total_vaccination".tr,
                      style: CustomTextStyles.titleMediumUrbanistWhiteA700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 261.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.h,
                      vertical: 14.v,
                    ),
                    decoration: AppDecoration.outlineIndigo.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR100,
                    ),
                    child: Text(
                      "lbl_total_allergies".tr,
                      style: CustomTextStyles.titleMediumUrbanistWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              top: 13.v,
              bottom: 13.v,
            ),
            child: Text(
              "lbl_2".tr,
              style: CustomTextStyles.titleMediumBold,
            ),
          ),
        ],
      ),
    );
  }
}
