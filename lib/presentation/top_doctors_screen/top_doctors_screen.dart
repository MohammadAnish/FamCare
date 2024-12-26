import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'models/userprofileslist_item_model.dart';
import 'provider/top_doctors_provider.dart';
import 'widgets/userprofileslist_item_widget.dart';

class TopDoctorsScreen extends StatefulWidget {
  const TopDoctorsScreen({Key? key}) : super(key: key);

  @override
  TopDoctorsScreenState createState() => TopDoctorsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TopDoctorsProvider(),
      child: const TopDoctorsScreen(),
    );
  }
}

class TopDoctorsScreenState extends State<TopDoctorsScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20.h),
              _buildUserProfilesList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the custom app bar
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
        text: "lbl_top_doctors".tr,
      ),
    );
  }

  /// Builds the list of user profiles
  Widget _buildUserProfilesList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Consumer<TopDoctorsProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 20.h);
              },
              itemCount: provider.topDoctorsModelObj.userprofileslistItemList.length,
              itemBuilder: (context, index) {
                UserprofileslistItemModel model =
                    provider.topDoctorsModelObj.userprofileslistItemList[index];
                return UserprofileslistItemWidget(
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

  /// Navigates to the doctorDetailScreen when the action is triggered
  void onTapUserprofile(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.doctorDetailScreen);
  }
}
