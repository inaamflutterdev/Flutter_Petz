import '../pet_profile_pets_history_page/widgets/userprofile6_item_widget.dart';
import 'models/pet_profile_pets_history_model.dart';
import 'models/userprofile6_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/pet_profile_pets_history_provider.dart';

// ignore_for_file: must_be_immutable
class PetProfilePetsHistoryPage extends StatefulWidget {
  const PetProfilePetsHistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  PetProfilePetsHistoryPageState createState() =>
      PetProfilePetsHistoryPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetProfilePetsHistoryProvider(),
      child: PetProfilePetsHistoryPage(),
    );
  }
}

class PetProfilePetsHistoryPageState extends State<PetProfilePetsHistoryPage>
    with AutomaticKeepAliveClientMixin<PetProfilePetsHistoryPage> {
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              _buildSubstanceUsesYour(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSubstanceUsesYour(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_tap_to_see_details".tr,
              style: CustomTextStyles.bodySmallErrorContainer,
            ),
          ),
          SizedBox(height: 12.v),
          Consumer<PetProfilePetsHistoryProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 11.v,
                  );
                },
                itemCount: provider
                    .petProfilePetsHistoryModelObj.userprofile6ItemList.length,
                itemBuilder: (context, index) {
                  Userprofile6ItemModel model = provider
                      .petProfilePetsHistoryModelObj
                      .userprofile6ItemList[index];
                  return Userprofile6ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
