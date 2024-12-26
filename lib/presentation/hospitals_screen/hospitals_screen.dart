import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_search_view.dart';
import 'provider/hospitals_provider.dart';

class HospitalsScreen extends StatefulWidget {
  const HospitalsScreen({Key? key}) : super(key: key);

  @override
  HospitalsScreenState createState() => HospitalsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HospitalsProvider(),
      child: HospitalsScreen(),
    );
  }
}

class HospitalsScreenState extends State<HospitalsScreen> {
  Completer<GoogleMapController> googleMapController = Completer();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.infinity,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstant.imgHospitals),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            height: 680.h,
            margin: EdgeInsets.only(top: 74.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                IntrinsicHeight(
                  child: Container(
                    height: 636.h,
                    margin: EdgeInsets.only(left: 4.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [_buildMapSection(context)],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 4.h),
                  padding: EdgeInsets.symmetric(horizontal: 4.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: Selector<HospitalsProvider, TextEditingController>(
                          selector: (context, provider) => provider.searchController,
                          builder: (context, searchController, child) {
                            return CustomSearchView(
                              controller: searchController,
                              hintText: "msg_search_location".tr,
                              contentPadding: EdgeInsets.fromLTRB(24.h, 10.h, 12.h, 10.h),
                              borderDecoration: SearchViewStyleHelper.fillOnErrorContainer,
                              fillColor: Theme.of(context).colorScheme.onErrorContainer,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Container(
                        height: 186.h,
                        width: 186.h,
                        margin: EdgeInsets.only(left: 24.h),
                        decoration: AppDecoration.outlineBlueA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder92,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgLinkedin,
                              height: 34.h,
                              width: 32.h,
                            ),
                            Spacer(),
                            _buildConfirmAddressSection(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 74.h,
      leadingWidth: 70.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(left: 30.h, top: 15.h, bottom: 19.h),
        onTap: () => _onTapArrowLeft(context),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_hospitals".tr,
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildMapSection(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 636.h,
        width: 314.h,
        child: GoogleMap(
          mapType: MapType.normal,
          initialCameraPosition: CameraPosition(
            target: LatLng(37.43296265331129, -122.08832357078792),
            zoom: 14.4746,
          ),
          onMapCreated: (GoogleMapController controller) {
            googleMapController.complete(controller);
          },
          zoomControlsEnabled: false,
          zoomGesturesEnabled: false,
          myLocationButtonEnabled: false,
          myLocationEnabled: false,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmAddressSection(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(right: 20.h),
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: Text(
              "msg_confirm_your_address".tr,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.infinity,
            child: Divider(
              endIndent: 16.h,
            ),
          ),
          SizedBox(height: 12.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinRed400,
                  height: 24.h,
                  width: 24.h,
                  margin: EdgeInsets.only(top: 6.h),
                ),
                SizedBox(width: 14.h),
                Expanded(
                  child: SizedBox(
                    width: 200.h,
                    child: Text(
                      "msg_flat_no_50_mahalaxmi".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumGray90002.copyWith(height: 1.36),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),
          CustomElevatedButton(
            height: 48.h,
            text: "lbl_confirm".tr,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            buttonStyle: CustomButtonStyles.none,
            decoration: CustomButtonStyles.gradientCyanToPrimaryTL24Decoration,
            buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
          ),
          SizedBox(height: 16.h),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  void _onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
