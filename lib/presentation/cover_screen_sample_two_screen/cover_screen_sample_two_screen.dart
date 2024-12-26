import 'package:flutter/material.dart';
//import '../core/app_export.dart';
//import 'models/your_model.dart'; // Replace with the actual model file
import '../../core/app_export.dart';
import 'provider/cover_screen_sample_two_provider.dart'; // Adjust if necessary

class CoverScreenSampleTwoScreen extends StatefulWidget {
  const CoverScreenSampleTwoScreen({Key? key}) : super(key: key);

  @override
  CoverScreenSampleTwoScreenState createState() => CoverScreenSampleTwoScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoverScreenSampleTwoProvider(),
      child: CoverScreenSampleTwoScreen(),
    );
  }
}

class CoverScreenSampleTwoScreenState extends State<CoverScreenSampleTwoScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(AppRoutes.onboardingOneScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.infinity,
          height: SizeUtils.height, // Ensure SizeUtils is defined
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.cyan400, // Ensure appTheme is defined
                appTheme.teal400, // Ensure appTheme is defined
              ],
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildStackPolygonOne(context),
                  SizedBox(height: 66.h), // Ensure 'h' is defined, or use an appropriate value
                  _buildColumnLogoOne(context),
                  SizedBox(height: 66.h), // Ensure 'h' is defined, or use an appropriate value
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup2, // Ensure ImageConstant is defined
                    height: 282.h,
                    width: 276.h,
                    alignment: Alignment.centerRight,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

///Section widget
  Widget _buildStackPolygonOne(BuildContext context) {
    return SizedBox(
      height: 244.h, // Ensure 'h' is defined, or use an appropriate value
      width: double.infinity,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup3, // Ensure ImageConstant is defined
            height: 244.h,
            width: 242.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPolygon1, // Ensure ImageConstant is defined
            height: 180.h,
            width: 222.h,
            alignment: Alignment.topRight,
          ),
        ],
      ),
    );
  }

///Section widget
  Widget _buildColumnLogoOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
			left: 24.h, 
			right: 29.h
		), // Ensure 'h' is defined, or use an appropriate value
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogo, // Ensure ImageConstant is defined
            height: 98.h,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
