import 'package:flutter/material.dart';import 'package:inaam_s_application1/core/app_export.dart';import 'package:inaam_s_application1/presentation/conditions_add_edit_bottomsheet/models/conditions_add_edit_model.dart';import '../models/no_item_model.dart';/// A provider class for the ConditionsAddEditBottomsheet.
///
/// This provider manages the state of the ConditionsAddEditBottomsheet, including the
/// current conditionsAddEditModelObj

// ignore_for_file: must_be_immutable
class ConditionsAddEditProvider extends ChangeNotifier {TextEditingController pristiagmailcomController = TextEditingController();

TextEditingController pristiagmailcomController1 = TextEditingController();

TextEditingController dateController = TextEditingController();

ConditionsAddEditModel conditionsAddEditModelObj = ConditionsAddEditModel();

@override void dispose() { super.dispose(); pristiagmailcomController.dispose(); pristiagmailcomController1.dispose(); dateController.dispose(); } 
void onSelectedChipView1(int index, bool value, ) { conditionsAddEditModelObj.noItemList.forEach((element) {element.isSelected = false;}); conditionsAddEditModelObj.noItemList[index].isSelected = value; notifyListeners(); } 
 }
