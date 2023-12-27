import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/upload_screen/models/upload_model.dart';

/// A provider class for the UploadScreen.
///
/// This provider manages the state of the UploadScreen, including the
/// current uploadModelObj
class UploadProvider extends ChangeNotifier {
  UploadModel uploadModelObj = UploadModel();

  @override
  void dispose() {
    super.dispose();
  }
}
