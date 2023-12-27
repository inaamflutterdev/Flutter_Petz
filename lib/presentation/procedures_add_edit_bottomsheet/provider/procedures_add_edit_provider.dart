import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/procedures_add_edit_bottomsheet/models/procedures_add_edit_model.dart';

/// A provider class for the ProceduresAddEditBottomsheet.
///
/// This provider manages the state of the ProceduresAddEditBottomsheet, including the
/// current proceduresAddEditModelObj
class ProceduresAddEditProvider extends ChangeNotifier {
  ProceduresAddEditModel proceduresAddEditModelObj = ProceduresAddEditModel();

  @override
  void dispose() {
    super.dispose();
  }
}
