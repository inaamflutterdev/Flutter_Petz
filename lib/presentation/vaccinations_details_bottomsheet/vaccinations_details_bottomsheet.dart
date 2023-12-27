import '../vaccinations_details_bottomsheet/widgets/vaccinationfields_item_widget.dart';
import 'models/vaccinationfields_item_model.dart';
import 'models/vaccinations_details_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/vaccinations_details_provider.dart';

// ignore_for_file: must_be_immutable
class VaccinationsDetailsBottomsheet extends StatefulWidget {
  const VaccinationsDetailsBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  VaccinationsDetailsBottomsheetState createState() =>
      VaccinationsDetailsBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VaccinationsDetailsProvider(),
      child: VaccinationsDetailsBottomsheet(),
    );
  }
}

class VaccinationsDetailsBottomsheetState
    extends State<VaccinationsDetailsBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 12.v,
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
          SizedBox(height: 8.v),
          Text(
            "lbl_vaccination".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 15.v),
          _buildVaccinationFields(context),
          SizedBox(height: 40.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildVaccinationFields(BuildContext context) {
    return Consumer<VaccinationsDetailsProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: provider
              .vaccinationsDetailsModelObj.vaccinationfieldsItemList.length,
          itemBuilder: (context, index) {
            VaccinationfieldsItemModel model = provider
                .vaccinationsDetailsModelObj.vaccinationfieldsItemList[index];
            return VaccinationfieldsItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
