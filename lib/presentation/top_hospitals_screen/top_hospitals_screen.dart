import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'models/userprofiles_item_model.dart';
import 'provider/top_hospitals_provider.dart';
import 'widgets/userprofiles_item_widget.dart';

class TopHospitalsScreen extends StatefulWidget {
  const TopHospitalsScreen({Key? key}) : super(key: key);

  @override
  TopHospitalsScreenState createState() => TopHospitalsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TopHospitalsProvider(),
      child: TopHospitalsScreen(),
    );
  }
}

class TopHospitalsScreenState extends State<TopHospitalsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 20.h,
            right: 20.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildUserProfiles(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 70.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconChevronLeftGray90002,
        margin: EdgeInsets.only(
          left: 46.h,
          top: 14.h,
          bottom: 17.h,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_top_hospitals".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfiles(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 12.h),
        child: Consumer<TopHospitalsProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20.h,
                );
              },
              itemCount: provider.topHospitalsModelObj.userprofilesItemList.length,
              itemBuilder: (context, index) {
                UserprofilesItemModel model = provider.topHospitalsModelObj.userprofilesItemList[index];
                return UserprofilesItemWidget(
                  model,
                  onTapUserprofile: () {
                    onTapUserprofile(context);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the topDoctorsScreen when the action is triggered.
  void onTapUserprofile(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.topDoctorsScreen);
  }
}
