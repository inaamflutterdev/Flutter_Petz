import '../models/vaccinationfields_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class VaccinationfieldsItemWidget extends StatelessWidget {
  VaccinationfieldsItemWidget(
    this.vaccinationfieldsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  VaccinationfieldsItemModel vaccinationfieldsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          vaccinationfieldsItemModelObj.emailTitle!,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 16.v),
        Text(
          vaccinationfieldsItemModelObj.emailText!,
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 22.v),
        Divider(),
      ],
    );
  }
}
