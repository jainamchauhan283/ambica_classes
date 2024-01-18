import 'package:ambica_classes/2/model/student_model.dart';
import 'package:ambica_classes/2/screens/edit_student/admission_screen.dart';
import 'package:ambica_classes/2/screens/edit_student/inq_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditStudentScreen extends StatelessWidget {
  EditStudentScreen({super.key});

  final StudentModel? student = Get.arguments;

  @override
  Widget build(BuildContext context) {
    print('Received data is : $student');

    int initialTabIndex = student?.stdType == 'inq' ? 0 : 1;

    return Scaffold(
      backgroundColor: tabColor,
      appBar: AppBar(
        backgroundColor: tabColor,
        elevation: 0,
        title: Text('Edit Student'),
      ),
      body: DefaultTabController(
        initialIndex: initialTabIndex,
        length: 2,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    color: tabColor,
                  ),
                  onTap: (index) {},
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
                    children: [
                      InquiryScreen(studentModel: student),
                      AdmissionScreen(studentModel: student),
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
}
