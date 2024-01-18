import 'package:ambica_classes/screens/edit_student/edit_admission_screen.dart';
import 'package:ambica_classes/screens/edit_student/edit_inquiry_screen.dart';
import 'package:ambica_classes/screens/edit_student/edit_tab_controller.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditTabScreen extends StatelessWidget {
  final EditTabBarController editTabBarController = Get.put(EditTabBarController());
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> data = Get.arguments;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: tabColor,
          elevation: 0,
          title: Text('Edit Student'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TabBar(
                controller: editTabBarController.tabController,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                unselectedLabelStyle: TextStyle(color: tabColor),
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: tabColor,
                ),
                onTap: (index) {
                  editTabBarController.changeTabIndex(index);
                },
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("For Inquiry"),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("For Admission"),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: editTabBarController.tabController,
                  children: [
                    // EditInqStudentScreen(),
                    EditInqStudentScreen(data: data),
                    EditAddStudentScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}