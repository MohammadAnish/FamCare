import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import 'provider/notification_provider.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationScreenState createState() => NotificationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationProvider(),
      child: NotificationScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class NotificationScreenState extends State<NotificationScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(
                flex: 54,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGroup200,
                height: 248.h,
                width: double.maxFinite,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 20.h,
                ),
              ),
              Spacer(
                flex: 45,
              )
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: CustomBottomBar(
        onChanged: (BottomBarEnum type) {
          Navigator.pushNamed(
              navigatorKey.currentContext!, getCurrentRoute(type));
        },
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.profileInitialPage;
      case BottomBarEnum.Reports:
        return AppRoutes.homePage;
      case BottomBarEnum.Notification:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }
}
