import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/history_tags_bottomsheet/models/history_tags_model.dart';

/// A provider class for the HistoryTagsBottomsheet.
///
/// This provider manages the state of the HistoryTagsBottomsheet, including the
/// current historyTagsModelObj
class HistoryTagsProvider extends ChangeNotifier {
  HistoryTagsModel historyTagsModelObj = HistoryTagsModel();

  @override
  void dispose() {
    super.dispose();
  }
}
