import 'models/add_pet_step_3_four_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/widgets/custom_elevated_button.dart';
import 'package:inaam_s_application1/widgets/custom_icon_button.dart';
import 'package:inaam_s_application1/widgets/custom_text_form_field.dart';
import 'provider/add_pet_step_3_four_provider.dart';

// ignore_for_file: must_be_immutable
class AddPetStep3FourPage extends StatefulWidget {
  const AddPetStep3FourPage({Key? key})
      : super(
          key: key,
        );

  @override
  AddPetStep3FourPageState createState() => AddPetStep3FourPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddPetStep3FourProvider(),
      child: AddPetStep3FourPage(),
    );
  }
}

class AddPetStep3FourPageState extends State<AddPetStep3FourPage>
    with AutomaticKeepAliveClientMixin<AddPetStep3FourPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.h,
                  right: 19.h,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 9.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_microchip_number".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 14.v),
                          Selector<AddPetStep3FourProvider,
                              TextEditingController?>(
                            selector: (
                              context,
                              provider,
                            ) =>
                                provider.exCounterController,
                            builder: (context, exCounterController, child) {
                              return CustomTextFormField(
                                controller: exCounterController,
                                hintText: "msg_ex_900123456789101".tr,
                                hintStyle:
                                    CustomTextStyles.bodyMediumPrimaryContainer,
                                textInputAction: TextInputAction.done,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 160.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(
                          height: 50.v,
                          width: 56.h,
                          padding: EdgeInsets.all(13.h),
                          decoration: IconButtonStyleHelper.outlineBlackTL10,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroupBlack900,
                          ),
                        ),
                        Expanded(
                          child: CustomElevatedButton(
                            text: "lbl_review".tr,
                            margin: EdgeInsets.only(left: 18.h),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
