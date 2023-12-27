import '../models/form_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FormItemWidget extends StatelessWidget {
  FormItemWidget(
    this.formItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FormItemModel formItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formItemModelObj.title!,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 16.v),
                      Text(
                        formItemModelObj.placeholder!,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: formItemModelObj?.imageClass,
                height: 28.v,
                width: 22.h,
                margin: EdgeInsets.only(
                  left: 52.h,
                  top: 30.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Divider(),
        ],
      ),
    );
  }
}
