import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/presentation/sign_up_two_screen/models/sign_up_two_model.dart';

/// A provider class for the SignUpTwoScreen.
///
/// This provider manages the state of the SignUpTwoScreen, including the
/// current signUpTwoModelObj
class SignUpTwoProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  SignUpTwoModel signUpTwoModelObj = SignUpTwoModel();

  Country? selectedCountry;

  bool isShowPassword = true;

  bool checkBox = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }

  void changePasswordVisibility() {
    isShowPassword = !isShowPassword;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    checkBox = value;
    notifyListeners();
  }
}
