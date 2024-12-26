import 'package:flutter/material.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:readmore/readmore.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../payment_success_dialog/payment_success_dialog.dart';
import 'models/doctordetail_item_model.dart';
import 'provider/doctor_detail_provider.dart';
import 'widgets/doctordetail_item_widget.dart';

class DoctorDetailScreen extends StatefulWidget {
  const DoctorDetailScreen({Key? key})
      : super(key: key);

  @override
  DoctorDetailScreenState createState() => DoctorDetailScreenState();
  
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoctorDetailProvider(),
      child: DoctorDetailScreen(),
    );
  }
}
// ignore_for_file: must_be_immutable
class DoctorDetailScreenState extends State<DoctorDetailScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildDoctorInfoSection(context),
                _buildDateSection(context),
                _buildAppointmentTimes(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(context),
      ),
    );
  }
}
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) {
  return CustomAppBar(
    leadingWidth: 62.h,
    leading: AppbarLeadingImage(
      imagePath: ImageConstant.imgIconChevronLeft,
      margin: EdgeInsets.only(
        left: 38.h,
        top: 14.h,
        bottom: 17.h,
      ),
    ),
    centerTitle: true,
    title: AppbarSubtitle(
      text: "lbl_doctor_detail".tr,
    ),
  );
}


/// Section Widget
Widget _buildDoctorInfoSection(BuildContext context) {
  return Column(
    children: [
      Container(
        decoration: AppDecoration.fillOnErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgPexelscedricfauntleroy4270371,
              height: 96.h,
              width: 96.h,
              radius: BorderRadius.circular(48.h), // Assuming radius should be half of height/width
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_dr_rishi".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  "lbl_chardiologist".tr,
                  style: theme.textTheme.labelLarge,
                ),
                CustomElevatedButton(
                  height: 18.h,
                  text: "lbl_47".tr,
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 4),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSignal,
                      height: 13.h,
                      width: 13.h,
                    ),
                  ),
                  buttonTextStyle: CustomTextStyles.labelLargeInterBlueA20001,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedinGray90002,
                      height: 13.h,
                      width: 13.h,
                    ),
                    Text(
                      "lbl_about".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ],
                ),
                SizedBox(
                  width: 298.82.h,
                  child: ReadMoreText(
                    "msg_lorem_ipsum_dolor".tr,
                    trimLines: 3,
                    colorClickableText: appTheme.blueA200,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "lbl_read_more".tr,
                    moreStyle: CustomTextStyles.bodySmallGray90002_1.copyWith(
                      fontSize: 1.67,
                    ),
                    lessStyle: CustomTextStyles.bodySmallGray90002_1.copyWith(
                      fontSize: 1.67,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}

/// Section Widget
Widget _buildSeparatorLine(BuildContext context) {
  return Divider();
}

/// Section Widget
Widget _buildDateSection(BuildContext context) {
  return Column(
    children: [
      Consumer<DoctorDetailProvider>(
        builder: (context, provider, child) {
          return SizedBox(
            width: 329.h,
            child: EasyDateTimeLine(
              initialDate: provider.selectedDatesFromCalendar ?? DateTime.now(),
              locale: 'en_US',
              headerProps: EasyHeaderProps(
                dateFormatter: DateFormatter.fullDateDMY(),
                monthPickerType: MonthPickerType.switcher,
                showHeader: false,
              ),
              dayProps: EasyDayProps(
                width: 329.h,
                height: 71.h,
              ),
                onDateChange: (DateTime selectedDate) {
                  provider.selectedDatesFromCalendar = selectedDate;
                },
              ),
          );
        },
      ),
      _buildSeparatorLine(context),
    ],
  );
}

/// Section Widget
Widget _buildAppointmentTimes(BuildContext context) {
  return Column(
    children: [
      Consumer<DoctorDetailProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 38.h,
              crossAxisCount: 3,
              mainAxisSpacing: 21.h,
              crossAxisSpacing: 21.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider.doctorDetailModelObj.doctordetailItemList.length,
            itemBuilder: (context, index) {
              DoctordetailItemModel model = provider.doctorDetailModelObj.doctordetailItemList[index];
              return DoctordetailItemWidget(
                model,
                CustomElevatedButton(
                  height: 51.h,
                  text: "lbl_book_appointment".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration: CustomButtonStyles.gradientCyanToPrimaryTL25Decoration,
                  buttonTextStyle: CustomTextStyles.titleSmallOnErrorContainer,
                  onPressed: () {
                    onTapBookAppointment(context);
                  },
                ),
              );
            },
          );
        },
      ),
    ],
  );
}

/// Section Widget
Widget _buildBottomNavigation(BuildContext context) {
  return CustomBottomBar(
    onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(
        NavigatorService.navigatorKey.currentContext!,
        getCurrentRoute(type),
      );
    },
  );
}

/// Section Widget
Widget _buildSaturdayColumn(
  BuildContext context, {
  required String sat,
  required String twentySix,
}) {
  return Container(
    decoration: AppDecoration.outlineGray90002.copyWith(
      borderRadius: BorderRadiusStyle.roundedBorder15,
    ),
    child: Column(
      children: [
        Text(
          sat,
          style: CustomTextStyles.bodySmallPoppinsGray90002.copyWith(
            color: appTheme.gray900.withOpacity(0.6),
          ),
        ),
        Text(
          twentySix,
          style: CustomTextStyles.titleMedium18.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    ),
  );
}

/// Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) {
  switch (type) {
    case BottomBarEnum.Home:
      return AppRoutes.profileInitialPage;
    case BottomBarEnum.Reports:
      return AppRoutes.homePage;
    case BottomBarEnum.Notification:
      return "/";
    case BottomBarEnum.Profile:
      return AppRoutes.profileScreen;
    default:
      return "/";
  }
}

/// Displays a dialog with the [PaymentSuccessDialog] content.
void onTapBookAppointment(BuildContext context) {
  showDialog(
    context: NavigatorService.navigatorKey.currentContext!,
    builder: (_) => AlertDialog(
      content: PaymentSuccessDialog.builder(
        NavigatorService.navigatorKey.currentContext!,
      ),
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
    ),
  );
}
