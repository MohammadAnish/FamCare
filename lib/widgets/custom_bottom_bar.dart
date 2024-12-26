import 'package:flutter/material.dart';
import 'package:untitled/core/app_export.dart';


enum BottomBarEnum { Home, Reports, Notification, Profile }

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  final Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  final List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavReports,
      activeIcon: ImageConstant.imgNavReports,
      title: "lbl_reports".tr,
      type: BottomBarEnum.Reports,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavNotificationGray90002,
      activeIcon: ImageConstant.imgNavNotificationGray90002,
      title: "lbl_notification".tr,
      type: BottomBarEnum.Notification,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfile24x24,
      activeIcon: ImageConstant.imgNavProfile24x24,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      decoration: BoxDecoration(
        color: const Color(0XFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: const Color(0X21000000),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              width: 46.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.h,
                    width: double.maxFinite,
                    color: const Color(0XFF221F1F),
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargeGray90002_1.copyWith(
                      color: const Color(0X99221F1F),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: SizedBox(
              width: 36.h,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 24.h,
                    width: double.maxFinite,
                    color: const Color(0XFF221F1F),
                  ),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargeGray90002_1.copyWith(
                      color: const Color(0X99221F1F),
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  final String icon;
  final String activeIcon;
  final String? title;
  final BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
