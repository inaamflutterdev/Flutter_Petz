import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/recover_screen/models/recover_model.dart';

/// A provider class for the RecoverScreen.
///
/// This provider manages the state of the RecoverScreen, including the
/// current recoverModelObj
class RecoverProvider extends ChangeNotifier {
  RecoverModel recoverModelObj = RecoverModel();

  @override
  void dispose() {
    super.dispose();
  }
}
