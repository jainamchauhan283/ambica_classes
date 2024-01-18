import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditTabBarController extends GetxController with GetSingleTickerProviderStateMixin {
  late TabController tabController;
  RxInt currentIndex = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    tabController = TabController(length: 2, vsync: this) as TabController;
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    tabController.dispose();
  }

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
}