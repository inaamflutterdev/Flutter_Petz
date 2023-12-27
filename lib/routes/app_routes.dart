import 'package:flutter/material.dart';
import 'package:inaam_s_application1/presentation/splashscreen_screen/splashscreen_screen.dart';
import 'package:inaam_s_application1/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:inaam_s_application1/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:inaam_s_application1/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:inaam_s_application1/presentation/onboarding_four_screen/onboarding_four_screen.dart';
import 'package:inaam_s_application1/presentation/onboarding_five_screen/onboarding_five_screen.dart';
import 'package:inaam_s_application1/presentation/sign_up_1_onboarding_six_screen/sign_up_1_onboarding_six_screen.dart';
import 'package:inaam_s_application1/presentation/sign_up_three_screen/sign_up_three_screen.dart';
import 'package:inaam_s_application1/presentation/login_screen/login_screen.dart';
import 'package:inaam_s_application1/presentation/sign_up_1_onboarding_seven_screen/sign_up_1_onboarding_seven_screen.dart';
import 'package:inaam_s_application1/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:inaam_s_application1/presentation/phone_verification_screen/phone_verification_screen.dart';
import 'package:inaam_s_application1/presentation/upload_screen/upload_screen.dart';
import 'package:inaam_s_application1/presentation/welcome_screen/welcome_screen.dart';
import 'package:inaam_s_application1/presentation/recover_screen/recover_screen.dart';
import 'package:inaam_s_application1/presentation/home_screen/home_screen.dart';
import 'package:inaam_s_application1/presentation/add_pet_step_1_four_screen/add_pet_step_1_four_screen.dart';
import 'package:inaam_s_application1/presentation/add_pet_step_1_two_screen/add_pet_step_1_two_screen.dart';
import 'package:inaam_s_application1/presentation/add_pet_step_3_four_tab_container_screen/add_pet_step_3_four_tab_container_screen.dart';
import 'package:inaam_s_application1/presentation/add_pet_step_4_four_screen/add_pet_step_4_four_screen.dart';
import 'package:inaam_s_application1/presentation/add_pet_id_set_verified_screen/add_pet_id_set_verified_screen.dart';
import 'package:inaam_s_application1/presentation/add_pet_microchip_verified_screen/add_pet_microchip_verified_screen.dart';
import 'package:inaam_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:inaam_s_application1/presentation/main_screen/main_screen.dart';
import 'package:inaam_s_application1/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:inaam_s_application1/presentation/password_login_screen/password_login_screen.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_screen/emergency_contacts_screen.dart';
import 'package:inaam_s_application1/presentation/addresses_screen/addresses_screen.dart';
import 'package:inaam_s_application1/presentation/history_tab_container_screen/history_tab_container_screen.dart';
import 'package:inaam_s_application1/presentation/pets_id_sets_screen/pets_id_sets_screen.dart';
import 'package:inaam_s_application1/presentation/edit_profile_add_phone_number_screen/edit_profile_add_phone_number_screen.dart';
import 'package:inaam_s_application1/presentation/emergency_contacts_add_edit_address_tab_container_screen/emergency_contacts_add_edit_address_tab_container_screen.dart';
import 'package:inaam_s_application1/presentation/settings_screen/settings_screen.dart';
import 'package:inaam_s_application1/presentation/privacy_settings_screen/privacy_settings_screen.dart';
import 'package:inaam_s_application1/presentation/privacy_settings1_screen/privacy_settings1_screen.dart';
import 'package:inaam_s_application1/presentation/privacy_settings_documents_files_screen/privacy_settings_documents_files_screen.dart';
import 'package:inaam_s_application1/presentation/main_one_screen/main_one_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profile_unverified_screen/pet_profile_unverified_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profileedit_profile_screen/pet_profileedit_profile_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profile_galerry_screen/pet_profile_galerry_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profile_document_screen/pet_profile_document_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profile_emergency_contacts_screen/pet_profile_emergency_contacts_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profile_pets_addresses_screen/pet_profile_pets_addresses_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profile_unverified1_screen/pet_profile_unverified1_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_screen/medical_card_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_vaccinations_screen/medical_card_vaccinations_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_procedures_screen/medical_card_procedures_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_allergies_screen/medical_card_allergies_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_conditions_screen/medical_card_conditions_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_medication_screen/medical_card_medication_screen.dart';
import 'package:inaam_s_application1/presentation/pet_profile_public_view_tab_container_screen/pet_profile_public_view_tab_container_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_public_profile_card_screen/medical_card_public_profile_card_screen.dart';
import 'package:inaam_s_application1/presentation/medical_card_public_profile_tag_screen/medical_card_public_profile_tag_screen.dart';
import 'package:inaam_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashscreenScreen = '/splashscreen_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String onboardingFourScreen = '/onboarding_four_screen';

  static const String onboardingFiveScreen = '/onboarding_five_screen';

  static const String signUp1OnboardingSixScreen =
      '/sign_up_1_onboarding_six_screen';

  static const String signUpThreeScreen = '/sign_up_three_screen';

  static const String loginScreen = '/login_screen';

  static const String signUp1OnboardingSevenScreen =
      '/sign_up_1_onboarding_seven_screen';

  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String phoneVerificationScreen = '/phone_verification_screen';

  static const String uploadScreen = '/upload_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String recoverScreen = '/recover_screen';

  static const String homeScreen = '/home_screen';

  static const String addPetStep1FourScreen = '/add_pet_step_1_four_screen';

  static const String addPetStep1TwoScreen = '/add_pet_step_1_two_screen';

  static const String addPetStep3FourPage = '/add_pet_step_3_four_page';

  static const String addPetStep3FourTabContainerScreen =
      '/add_pet_step_3_four_tab_container_screen';

  static const String addPetStep4FourScreen = '/add_pet_step_4_four_screen';

  static const String addPetIdSetVerifiedScreen =
      '/add_pet_id_set_verified_screen';

  static const String addPetMicrochipVerifiedScreen =
      '/add_pet_microchip_verified_screen';

  static const String profileScreen = '/profile_screen';

  static const String mainScreen = '/main_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String passwordLoginScreen = '/password_login_screen';

  static const String emergencyContactsScreen = '/emergency_contacts_screen';

  static const String addressesScreen = '/addresses_screen';

  static const String historyPage = '/history_page';

  static const String historyTabContainerScreen =
      '/history_tab_container_screen';

  static const String petsIdSetsScreen = '/pets_id_sets_screen';

  static const String editProfileAddPhoneNumberScreen =
      '/edit_profile_add_phone_number_screen';

  static const String emergencyContactsAddEditProfilePage =
      '/emergency_contacts_add_edit_profile_page';

  static const String emergencyContactsAddEditAddressPage =
      '/emergency_contacts_add_edit_address_page';

  static const String emergencyContactsAddEditAddress1Page =
      '/emergency_contacts_add_edit_address1_page';

  static const String emergencyContactsAddEditAddressTabContainerScreen =
      '/emergency_contacts_add_edit_address_tab_container_screen';

  static const String settingsScreen = '/settings_screen';

  static const String privacySettingsScreen = '/privacy_settings_screen';

  static const String privacySettings1Screen = '/privacy_settings1_screen';

  static const String privacySettingsDocumentsFilesScreen =
      '/privacy_settings_documents_files_screen';

  static const String mainOneScreen = '/main_one_screen';

  static const String petProfileUnverifiedScreen =
      '/pet_profile_unverified_screen';

  static const String petProfileeditProfileScreen =
      '/pet_profileedit_profile_screen';

  static const String petProfileGalerryScreen = '/pet_profile_galerry_screen';

  static const String petProfileDocumentScreen = '/pet_profile_document_screen';

  static const String petProfileEmergencyContactsScreen =
      '/pet_profile_emergency_contacts_screen';

  static const String petProfilePetsAddressesScreen =
      '/pet_profile_pets_addresses_screen';

  static const String petProfilePetsHistoryPage =
      '/pet_profile_pets_history_page';

  static const String petProfileUnverified1Screen =
      '/pet_profile_unverified1_screen';

  static const String medicalCardScreen = '/medical_card_screen';

  static const String medicalCardveterinaryEmergencyContactsAddEditPage =
      '/medical_cardveterinary_emergency_contacts_add_edit_page';

  static const String medicalCardVaccinationsScreen =
      '/medical_card_vaccinations_screen';

  static const String medicalCardProceduresScreen =
      '/medical_card_procedures_screen';

  static const String medicalCardAllergiesScreen =
      '/medical_card_allergies_screen';

  static const String medicalCardConditionsScreen =
      '/medical_card_conditions_screen';

  static const String medicalCardMedicationScreen =
      '/medical_card_medication_screen';

  static const String petProfilePublicViewPage =
      '/pet_profile_public_view_page';

  static const String petProfilePublicViewTabContainerScreen =
      '/pet_profile_public_view_tab_container_screen';

  static const String medicalCardPublicProfileCardScreen =
      '/medical_card_public_profile_card_screen';

  static const String medicalCardPublicProfileTagScreen =
      '/medical_card_public_profile_tag_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashscreenScreen: SplashscreenScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        onboardingTwoScreen: OnboardingTwoScreen.builder,
        onboardingThreeScreen: OnboardingThreeScreen.builder,
        onboardingFourScreen: OnboardingFourScreen.builder,
        onboardingFiveScreen: OnboardingFiveScreen.builder,
        signUp1OnboardingSixScreen: SignUp1OnboardingSixScreen.builder,
        signUpThreeScreen: SignUpThreeScreen.builder,
        loginScreen: LoginScreen.builder,
        signUp1OnboardingSevenScreen: SignUp1OnboardingSevenScreen.builder,
        signUpTwoScreen: SignUpTwoScreen.builder,
        phoneVerificationScreen: PhoneVerificationScreen.builder,
        uploadScreen: UploadScreen.builder,
        welcomeScreen: WelcomeScreen.builder,
        recoverScreen: RecoverScreen.builder,
        homeScreen: HomeScreen.builder,
        addPetStep1FourScreen: AddPetStep1FourScreen.builder,
        addPetStep1TwoScreen: AddPetStep1TwoScreen.builder,
        addPetStep3FourTabContainerScreen:
            AddPetStep3FourTabContainerScreen.builder,
        addPetStep4FourScreen: AddPetStep4FourScreen.builder,
        addPetIdSetVerifiedScreen: AddPetIdSetVerifiedScreen.builder,
        addPetMicrochipVerifiedScreen: AddPetMicrochipVerifiedScreen.builder,
        profileScreen: ProfileScreen.builder,
        mainScreen: MainScreen.builder,
        editProfileScreen: EditProfileScreen.builder,
        passwordLoginScreen: PasswordLoginScreen.builder,
        emergencyContactsScreen: EmergencyContactsScreen.builder,
        addressesScreen: AddressesScreen.builder,
        historyTabContainerScreen: HistoryTabContainerScreen.builder,
        petsIdSetsScreen: PetsIdSetsScreen.builder,
        editProfileAddPhoneNumberScreen:
            EditProfileAddPhoneNumberScreen.builder,
        emergencyContactsAddEditAddressTabContainerScreen:
            EmergencyContactsAddEditAddressTabContainerScreen.builder,
        settingsScreen: SettingsScreen.builder,
        privacySettingsScreen: PrivacySettingsScreen.builder,
        privacySettings1Screen: PrivacySettings1Screen.builder,
        privacySettingsDocumentsFilesScreen:
            PrivacySettingsDocumentsFilesScreen.builder,
        mainOneScreen: MainOneScreen.builder,
        petProfileUnverifiedScreen: PetProfileUnverifiedScreen.builder,
        petProfileeditProfileScreen: PetProfileeditProfileScreen.builder,
        petProfileGalerryScreen: PetProfileGalerryScreen.builder,
        petProfileDocumentScreen: PetProfileDocumentScreen.builder,
        petProfileEmergencyContactsScreen:
            PetProfileEmergencyContactsScreen.builder,
        petProfilePetsAddressesScreen: PetProfilePetsAddressesScreen.builder,
        petProfileUnverified1Screen: PetProfileUnverified1Screen.builder,
        medicalCardScreen: MedicalCardScreen.builder,
        medicalCardVaccinationsScreen: MedicalCardVaccinationsScreen.builder,
        medicalCardProceduresScreen: MedicalCardProceduresScreen.builder,
        medicalCardAllergiesScreen: MedicalCardAllergiesScreen.builder,
        medicalCardConditionsScreen: MedicalCardConditionsScreen.builder,
        medicalCardMedicationScreen: MedicalCardMedicationScreen.builder,
        petProfilePublicViewTabContainerScreen:
            PetProfilePublicViewTabContainerScreen.builder,
        medicalCardPublicProfileCardScreen:
            MedicalCardPublicProfileCardScreen.builder,
        medicalCardPublicProfileTagScreen:
            MedicalCardPublicProfileTagScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashscreenScreen.builder
      };
}
