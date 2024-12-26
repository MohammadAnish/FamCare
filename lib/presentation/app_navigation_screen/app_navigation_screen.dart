import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../payment_success_dialog/payment_success_dialog.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: const AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
    // Initial setup or navigation logic if needed
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white, // Adjust as needed
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                color: Colors.grey[200], // Adjust as needed
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black, // Adjust as needed
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        "Check your app's UI from the below demo screens of your app.",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Color(0xFF888888),
                          fontSize: 16.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    const Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: Color(0xFF000000),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          color: Colors.white, // Adjust as needed
                          child: Column(
                            children: [
                              _buildScreenTitle(
                                context,
                                screenTitle: "Cover-Screen-Sample-Two",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.coverScreenSampleTwoScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Onboarding-One",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.onboardingOneScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Registration",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.registrationScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Sign-in",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.signInScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Set-Password",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.setPasswordScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Forgot-Password",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.forgotPasswordScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Reset-Password",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.resetPasswordScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Hospitals",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.hospitalsScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Top Hospitals",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.topHospitalsScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Top Doctors",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.topDoctorsScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Doctor Detail",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.doctorDetailScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Payment Success Dialog",
                                onTapScreenTitle: () => _showDialog(context, PaymentSuccessDialog.builder(context)),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Live-Status-Light",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.liveStatusLightScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Live-Status-Dark",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.liveStatusDarkScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Notification",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.notificationScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Profile",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.profileScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Reports",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.reportsScreen),
                              ),
                              _buildScreenTitle(
                                context,
                                screenTitle: "Appointment",
                                onTapScreenTitle: () => NavigatorService.pushNamed(AppRoutes.appointmentScreen),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    VoidCallback? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: onTapScreenTitle,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Adjust as needed
        ),
        child: Column(
          children: [
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black, // Adjust as needed
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color(0xFF888888),
            ),
          ],
        ),
      ),
    );
  }



  void _showDialog(BuildContext context, Widget dialog) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: dialog,
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.zero,
        );
      },
    );
  }
}

/// Common click event
void onTapScreenTit1e(String routeName) {
		NavigatorService.pushNamed(routeName);
	}


