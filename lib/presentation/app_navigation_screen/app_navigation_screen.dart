import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:inaam_s_application1/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.1 Splashscreen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashscreenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.2 - Onboarding One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.3 Onboarding Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.3 Onboarding Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.3 Onboarding Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.3 Onboarding Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.onboardingFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.3 Sign Up 1 - Onboarding Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUp1OnboardingSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#1.1 Sign Up Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#2.0 Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#0.3 Sign Up 1 - Onboarding Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.signUp1OnboardingSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#1.1 Sign Up Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#1.2 Phone Verification".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.phoneVerificationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#1.5 Upload".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.uploadScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#1.6 Welcome".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#2.1 Recover".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.recoverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.0 Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.2 Add Pet - Step 1/Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPetStep1FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.3 Add Pet - Step 1/Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPetStep1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#3.5 Add Pet - Step 3/Four - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPetStep3FourTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.6 Add Pet - Step 4/Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addPetStep4FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.1.3 Add Pet - ID Set Verified".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPetIdSetVerifiedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.1.5 Add Pet - Microchip Verified".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.addPetMicrochipVerifiedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#4.0 Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.0 Main".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#4.1 Edit Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.editProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#4.2 Password & Login".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passwordLoginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#4.3 Emergency Contacts".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.emergencyContactsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#4.4 Addresses".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.addressesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#4.5 History - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.historyTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#5.0 Pets.ID Sets".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.petsIdSetsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#4.1.1 Edit Profile - Add Phone Number".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.editProfileAddPhoneNumberScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#4.3.4 Emergency Contacts - Add/Edit - Address - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .emergencyContactsAddEditAddressTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6.0 Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.settingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6.0.1 Privacy Settings".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.privacySettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#6.0.1.1 Privacy Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.privacySettings1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#6.0.1.5 Privacy Settings - Documents&Files ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.privacySettingsDocumentsFilesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#3.0 Main One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.mainOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7.0.1 Pet Profile - Unverified".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfileUnverifiedScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7.2 Pet ProfileEdit Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfileeditProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7.3 Pet Profile - Galerry".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfileGalerryScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7.4 Pet Profile - Document".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfileDocumentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#7.5 Pet Profile - Emergency Contacts".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfileEmergencyContactsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7.6 Pet Profile - Pets Addresses".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfilePetsAddressesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#7.0.2 Pet Profile - Unverified".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfileUnverified1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8.0 Medical Card".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.medicalCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8.2 Medical Card - Vaccinations".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.medicalCardVaccinationsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8.3 Medical Card - Procedures".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.medicalCardProceduresScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8.4 Medical Card - Allergies".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.medicalCardAllergiesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8.5 Medical Card - Conditions".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.medicalCardConditionsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "#8.6 Medical Card - Medication".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.medicalCardMedicationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#10 Pet Profile - Public View - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.petProfilePublicViewTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#8.4 Medical Card - Public Profile (Card)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.medicalCardPublicProfileCardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "#8.4 Medical Card - Public Profile (Tag)".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.medicalCardPublicProfileTagScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
