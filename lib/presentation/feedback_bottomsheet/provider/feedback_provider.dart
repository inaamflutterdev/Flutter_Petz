import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/feedback_bottomsheet/models/feedback_model.dart';

/// A provider class for the FeedbackBottomsheet.
///
/// This provider manages the state of the FeedbackBottomsheet, including the
/// current feedbackModelObj
class FeedbackProvider extends ChangeNotifier {
  TextEditingController feedbackvalueController = TextEditingController();

  FeedbackModel feedbackModelObj = FeedbackModel();

  @override
  void dispose() {
    super.dispose();
    feedbackvalueController.dispose();
  }
}
