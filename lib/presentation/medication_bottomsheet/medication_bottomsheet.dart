import '../medication_bottomsheet/widgets/form_item_widget.dart';
import 'models/form_item_model.dart';
import 'models/medication_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/medication_provider.dart';

// ignore_for_file: must_be_immutable
class MedicationBottomsheet extends StatefulWidget {
  const MedicationBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  MedicationBottomsheetState createState() => MedicationBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MedicationProvider(),
      child: MedicationBottomsheet(),
    );
  }
}

class MedicationBottomsheetState extends State<MedicationBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 15.v,
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
          SizedBox(height: 6.v),
          Text(
            "lbl_add_medication".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 10.v),
          _buildForm(context),
          SizedBox(height: 58.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForm(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Consumer<MedicationProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 9.v,
                );
              },
              itemCount: provider.medicationModelObj.formItemList.length,
              itemBuilder: (context, index) {
                FormItemModel model =
                    provider.medicationModelObj.formItemList[index];
                return FormItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
