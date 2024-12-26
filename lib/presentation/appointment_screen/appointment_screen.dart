import 'package:flutter/material.dart';
import 'package:untitled/presentation/appointment_screen/provider/appointment_provider.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  AppointmentScreenState createState() => AppointmentScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppointmentProvider(),
      child: const AppointmentScreen(),
    );
  }
}


///ignore_for_file: must_be_immutable
class AppointmentScreenState extends State<AppointmentScreen> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    // Initialize any necessary state here
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                flex: 54,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup200, // Adjust image path as necessary
                  height: 248.0,
                  width: double.infinity,
                  margin: const EdgeInsets.only(
                    left: 22.0,
                    right: 38.0,
                  ),
                ),
              ),
              Expanded(
                flex: 45,
                child: SizedBox(
                  width: double.infinity,
                  child: _buildBottomNavigation(context),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

///Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
            navigatorKey.currentContext!,
            _getCurrentRoute(type),
          );
        },
      ),
    );
  }

///Handling route based on bottom click actions
  String _getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.profileInitialPage; // Adjust route as necessary
      case BottomBarEnum.Reports:
        return AppRoutes.homePage; // Adjust route as necessary
      case BottomBarEnum.Notification:
        return AppRoutes.notificationScreen; // Adjust route as necessary
      case BottomBarEnum.Profile:
        return AppRoutes.profileScreen; // Adjust route as necessary
      default:
        return AppRoutes.homePage; // Adjust route as necessary
    }
  }
}
