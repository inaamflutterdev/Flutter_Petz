import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 1.v,
              width: 315.h,
              margin: EdgeInsets.only(top: 44.v),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary,
              ),
            ),
          ],
        ),
        Container(
          height: 1.v,
          width: 310.h,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
