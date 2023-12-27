import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/history_tab_container_screen/models/history_tab_container_model.dart';

/// A provider class for the HistoryTabContainerScreen.
///
/// This provider manages the state of the HistoryTabContainerScreen, including the
/// current historyTabContainerModelObj
class HistoryTabContainerProvider extends ChangeNotifier {
  HistoryTabContainerModel historyTabContainerModelObj =
      HistoryTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
