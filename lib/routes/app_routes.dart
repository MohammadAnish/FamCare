import 'package:flutter/material.dart';
import 'package:untitled/presentation/home_page/home_page.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/appointment_screen/appointment_screen.dart';
import '../presentation/cover_screen_sample_two_screen/cover_screen_sample_two_screen.dart';
import '../presentation/doctor_detail_screen/doctor_detail_screen.dart';
import '../presentation/forgot_password_screen/forgot_password_screen.dart';
import '../presentation/hospitals_screen/hospitals_screen.dart';
import '../presentation/live_status_dark_screen/live_status_dark_screen.dart';
import '../presentation/live_status_light_screen/live_status_light_screen.dart';
import '../presentation/notification_screen/notification_screen.dart';
import '../presentation/onboarding_one_screen/onboarding_one_screen.dart';
import '../presentation/profile_screen/profile_screen.dart';
import '../presentation/registration_screen/registration_screen.dart';
import '../presentation/reports_screen/reports_screen.dart';
import '../presentation/reset_password_screen/reset_password_screen.dart';
import '../presentation/set_password_screen/set_password_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/top_doctors_screen/top_doctors_screen.dart';
import '../presentation/top_hospitals_screen/top_hospitals_screen.dart';

class AppRoutes {
  static const String coverScreenSampleTwoScreen =
      '/cover_screen_sample_two_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String registrationScreen = '/registration_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String setPasswordScreen = '/set_password_screen';
 
  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String resetPasswordScreen = '/reset_password_screen';

  static const String homePage = '/home_page';

  static const String hospitalsScreen = '/hospitals_screen';

  static const String topHospitalsScreen = '/top_hospitals_screen';

  static const String topDoctorsScreen = '/top_doctors_screen';

  static const String doctorDetailScreen = '/doctor_detail_screen';

  static const String liveStatusLightScreen = '/live_status_light_screen';

  static const String liveStatusDarkScreen = '/live_status_dark_screen';

  static const String notificationScreen = '/notification_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileInitialPage = '/profile_initial_page';

  static const String reportsScreen = '/reports_screen';

  static const String appointmentScreen = '/appointment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        coverScreenSampleTwoScreen: CoverScreenSampleTwoScreen.builder,
        onboardingOneScreen: OnboardingOneScreen.builder,
        registrationScreen: RegistrationScreen.builder,
        signInScreen: SignInScreen.builder,
        setPasswordScreen: SetPasswordScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        resetPasswordScreen: ResetPasswordScreen.builder,
        hospitalsScreen: HospitalsScreen.builder,
        topHospitalsScreen: TopHospitalsScreen.builder,
        topDoctorsScreen: TopDoctorsScreen.builder,
        doctorDetailScreen: DoctorDetailScreen.builder,
        liveStatusLightScreen: LiveStatusLightScreen.builder,
        liveStatusDarkScreen: LiveStatusDarkScreen.builder,
        notificationScreen: NotificationScreen.builder,
        profileScreen: ProfileScreen.builder,
        reportsScreen: ReportsScreen.builder,
        appointmentScreen: AppointmentScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: CoverScreenSampleTwoScreen.builder,
        homePage: HomePage.builder
      };
}

