import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/feedback1_bottomsheet/models/feedback1_model.dart';

/// A provider class for the Feedback1Bottomsheet.
///
/// This provider manages the state of the Feedback1Bottomsheet, including the
/// current feedback1ModelObj
class Feedback1Provider extends ChangeNotifier {
  Feedback1Model feedback1ModelObj = Feedback1Model();

  @override
  void dispose() {
    super.dispose();
  }
}
