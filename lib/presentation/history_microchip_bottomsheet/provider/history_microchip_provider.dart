import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/history_microchip_bottomsheet/models/history_microchip_model.dart';

/// A provider class for the HistoryMicrochipBottomsheet.
///
/// This provider manages the state of the HistoryMicrochipBottomsheet, including the
/// current historyMicrochipModelObj
class HistoryMicrochipProvider extends ChangeNotifier {
  HistoryMicrochipModel historyMicrochipModelObj = HistoryMicrochipModel();

  @override
  void dispose() {
    super.dispose();
  }
}
