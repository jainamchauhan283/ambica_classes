import 'package:ambica_classes/screens/addStudent/add_adm_student_screen.dart';
import 'package:ambica_classes/screens/addStudent/add_inq_student_screen.dart';
import 'package:ambica_classes/screens/addStudent/add_tab_controller.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTabScreen extends StatelessWidget {
  final TabBarController tabBarController = Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: tabColor,
          elevation: 0,
          title: Text('Add Student'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             TabBar(
                  controller: tabBarController.tabController,
                  unselectedLabelColor: grayColor,
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
                    tabBarController.changeTabIndex(index);
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
                    controller: tabBarController.tabController,
                    children: [
                      AddInqStudentScreen(),
                      AddAdmStudentScreen(),
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
