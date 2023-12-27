import '../history_page/widgets/userprofile3_item_widget.dart';
import 'models/history_model.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/history_provider.dart';

// ignore_for_file: must_be_immutable
class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPageState createState() => HistoryPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HistoryProvider(),
      child: HistoryPage(),
    );
  }
}

class HistoryPageState extends State<HistoryPage>
    with AutomaticKeepAliveClientMixin<HistoryPage> {
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
          Consumer<HistoryProvider>(
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
                itemCount: provider.historyModelObj.userprofile3ItemList.length,
                itemBuilder: (context, index) {
                  Userprofile3ItemModel model =
                      provider.historyModelObj.userprofile3ItemList[index];
                  return Userprofile3ItemWidget(
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
