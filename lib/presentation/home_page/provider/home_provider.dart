import 'package:flutter/material.dart';
import '../models/home_model.dart';
////change_done

/// A provider class for the HomePage.
/// This provider manages the state of the HomePage, including the current homeModelObj.
// ignore_for_file: must_be_immutable
class HomeProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  HomeModel homeModelObj = HomeModel();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
