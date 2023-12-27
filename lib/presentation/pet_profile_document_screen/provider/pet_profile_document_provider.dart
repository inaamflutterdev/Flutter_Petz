import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/pet_profile_document_screen/models/pet_profile_document_model.dart';

/// A provider class for the PetProfileDocumentScreen.
///
/// This provider manages the state of the PetProfileDocumentScreen, including the
/// current petProfileDocumentModelObj
class PetProfileDocumentProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  PetProfileDocumentModel petProfileDocumentModelObj =
      PetProfileDocumentModel();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  onSelected(dynamic value) {
    for (var element in petProfileDocumentModelObj.dropdownItemList) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }

  onSelected1(dynamic value) {
    for (var element in petProfileDocumentModelObj.dropdownItemList1) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    }
    notifyListeners();
  }
}
