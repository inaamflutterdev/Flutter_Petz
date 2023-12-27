import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/history_vet_access_bottomsheet/models/history_vet_access_model.dart';

/// A provider class for the HistoryVetAccessBottomsheet.
///
/// This provider manages the state of the HistoryVetAccessBottomsheet, including the
/// current historyVetAccessModelObj
class HistoryVetAccessProvider extends ChangeNotifier {
  HistoryVetAccessModel historyVetAccessModelObj = HistoryVetAccessModel();

  @override
  void dispose() {
    super.dispose();
  }
}
