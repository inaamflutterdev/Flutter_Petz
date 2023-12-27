import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/medical_card_public_profile_tag_screen/models/medical_card_public_profile_tag_model.dart';

/// A provider class for the MedicalCardPublicProfileTagScreen.
///
/// This provider manages the state of the MedicalCardPublicProfileTagScreen, including the
/// current medicalCardPublicProfileTagModelObj
class MedicalCardPublicProfileTagProvider extends ChangeNotifier {
  MedicalCardPublicProfileTagModel medicalCardPublicProfileTagModelObj =
      MedicalCardPublicProfileTagModel();

  @override
  void dispose() {
    super.dispose();
  }

  onSelected(dynamic value) {
    for (var element in medicalCardPublicProfileTagModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in medicalCardPublicProfileTagModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected2(dynamic value) {
    for (var element in medicalCardPublicProfileTagModelObj.dropdownItemList2) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected3(dynamic value) {
    for (var element in medicalCardPublicProfileTagModelObj.dropdownItemList3) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
