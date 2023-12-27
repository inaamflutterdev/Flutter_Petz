import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/presentation/sign_up_three_screen/models/sign_up_three_model.dart';

/// A provider class for the SignUpThreeScreen.
///
/// This provider manages the state of the SignUpThreeScreen, including the
/// current signUpThreeModelObj
class SignUpThreeProvider extends ChangeNotifier {
  TextEditingController emailController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  SignUpThreeModel signUpThreeModelObj = SignUpThreeModel();

  Country? selectedCountry;

  bool isShowPassword = true;

  bool checkmark = false;

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
    checkmark = value;
    notifyListeners();
  }
}
