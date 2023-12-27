import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'package:inaam_s_application1/presentation/password_login_screen/models/password_login_model.dart';

/// A provider class for the PasswordLoginScreen.
///
/// This provider manages the state of the PasswordLoginScreen, including the
/// current passwordLoginModelObj
class PasswordLoginProvider extends ChangeNotifier {
  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  TextEditingController passwordController2 = TextEditingController();

  PasswordLoginModel passwordLoginModelObj = PasswordLoginModel();

  bool isShowPassword = true;

  bool isShowPassword1 = true;

  bool isShowPassword2 = true;

  @override
  void dispose() {
    super.dispose();
    passwordController.dispose();
    passwordController1.dispose();
    passwordController2.dispose();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changePasswordVisibility1() {
    isShowPassword1 = !isShowPassword1;
    notifyListeners();
  }

  void changePasswordVisibility2() {
    isShowPassword2 = !isShowPassword2;
    notifyListeners();
  }
}
