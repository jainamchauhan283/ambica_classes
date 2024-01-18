import 'package:ambica_classes/2/model/student_model.dart';
import 'package:ambica_classes/2/routes.dart';
import 'package:ambica_classes/2/screens/edit_student/edit_student_controller.dart';
import 'package:ambica_classes/2/services/firebase_operations.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class InquiryScreen extends StatelessWidget {
  InquiryScreen({super.key, this.studentModel});

  final StudentModel? studentModel;
  EditController controller = Get.put(EditController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    print('student model is $studentModel');
    controller.docId.text = studentModel!.stdId.toString();
    controller.student_name.text = studentModel!.stdName.toString();
    controller.student_branch.text = studentModel!.stdBranch.toString();
    controller.student_sem.text = studentModel!.stdSem.toString();
    controller.student_year.text = studentModel!.stdYear.toString();
    controller.student_mail.text = studentModel!.stdMail.toString();
    controller.student_number.text = studentModel!.stdNumber.toString();
    controller.student_uni.text = studentModel!.stdUni.toString();
    controller.student_add1.text = studentModel!.stdAdd1.toString();
    controller.student_add2.text = studentModel!.stdAdd2.toString();
    controller.student_add3.text = studentModel!.stdAdd3.toString();
    controller.student_city.text = studentModel!.stdCity.toString();
    controller.student_zip.text = studentModel!.stdZipcode.toString();
    controller.student_state.text = studentModel!.stdState.toString();
    controller.student_country.text = studentModel!.stdCountry.toString();
    controller.student_course.text = studentModel!.stdCourse.toString();
    controller.student_f_name.text = studentModel!.stdFName.toString();
    controller.student_f_occu.text = studentModel!.stdFOccu.toString();
    controller.student_f_mail.text = studentModel!.stdFMail.toString();
    controller.student_f_number.text = studentModel!.stdFNumber.toString();
    controller.student_m_name.text = studentModel!.stdMName.toString();
    controller.student_m_occu.text = studentModel!.stdMOccu.toString();
    controller.student_m_mail.text = studentModel!.stdMMail.toString();
    controller.student_m_number.text = studentModel!.stdMNumber.toString();
    controller.student_g_name.text = studentModel!.stdGName.toString();
    controller.student_g_occu.text = studentModel!.stdGOccu.toString();
    controller.student_g_mail.text = studentModel!.stdGMail.toString();
    controller.student_g_number.text = studentModel!.stdGNumber.toString();

    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(controller.docId.text),
              Row(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey.shade500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.camera_alt,
                          color: Colors.white54,
                          size: 35,
                        ),
                        Text(
                          'Student Photo',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: controller.student_name,
                            decoration: InputDecoration(
                              hintText: "Student's Name",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the student\'s name';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: controller.student_branch,
                            decoration: InputDecoration(
                              hintText: "Student's Branch",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the student\'s branch';
                              }
                              return null;
                            },
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: controller.student_sem,
                                  decoration: InputDecoration(
                                    hintText: 'Semester',
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter the semester';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: TextFormField(
                                  controller: controller.student_year,
                                  decoration: InputDecoration(
                                    hintText: 'Year',
                                  ),
                                  keyboardType: TextInputType.number,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter the year';
                                    }
                                    return null;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              TextFormField(
                controller: controller.student_mail,
                decoration: InputDecoration(
                  hintText: "Student's Email",
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the student\'s Email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.student_number,
                decoration: InputDecoration(
                  hintText: "Student's Number",
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the student\'s number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: controller.student_uni,
                decoration: InputDecoration(
                  hintText: "University/Institute",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter University/Institute Name';
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 1",
                ),
                controller: controller.student_add1,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 2",
                ),
                controller: controller.student_add2,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 3",
                ),
                controller: controller.student_add3,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Student's City",
                      ),
                      controller: controller.student_city,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Zip Code',
                      ),
                      controller: controller.student_zip,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'State',
                      ),
                      controller: controller.student_state,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Country',
                      ),
                      controller: controller.student_country,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Course',
                      ),
                      controller: controller.student_course,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 10),
              Text(
                "Father's Details :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Name",
                ),
                controller: controller.student_f_name,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Occupation",
                ),
                controller: controller.student_f_occu,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Email",
                ),
                controller: controller.student_f_mail,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Number",
                ),
                controller: controller.student_f_number,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 10),
              Text(
                "Mother's Details :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Name",
                ),
                controller: controller.student_m_name,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Occupation",
                ),
                controller: controller.student_m_occu,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Email",
                ),
                controller: controller.student_m_mail,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Number",
                ),
                controller: controller.student_m_number,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 10),
              Text(
                "Guardian's Details :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Guardian Name",
                ),
                controller: controller.student_g_name,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Guardian Occupation",
                ),
                controller: controller.student_g_occu,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Guardian Email",
                ),
                controller: controller.student_g_mail,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Guardian Number",
                ),
                controller: controller.student_g_number,
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // cancel button
                  SizedBox(
                    width: size.width * 0.35,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: redColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.close, size: 20),
                          Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // save button
                  SizedBox(
                    width: size.width * 0.35,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tabColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () async {
                        if (formKey.currentState?.validate() ?? false) {
                          try {
                            // String newType = 'inq';
                            await FireOperations.updateStudent(StudentModel(
                              stdType: 'inq',
                              stdId: controller.docId.text,
                              stdImage: '',
                              stdName: controller.student_name.text,
                              stdBranch: controller.student_branch.text,
                              stdSem: controller.student_sem.text,
                              stdYear: controller.student_year.text,
                              stdMail: controller.student_mail.text,
                              stdNumber: controller.student_number.text,
                              stdUni: controller.student_uni.text,
                              stdAdd1: controller.student_add1.text,
                              stdAdd2: controller.student_add2.text,
                              stdAdd3: controller.student_add3.text,
                              stdCity: controller.student_city.text,
                              stdZipcode: controller.student_zip.text,
                              stdState: controller.student_state.text,
                              stdCountry: controller.student_country.text,
                              stdCourse: controller.student_course.text,
                              stdFName: controller.student_f_name.text,
                              stdFOccu: controller.student_m_name.text,
                              stdFMail: controller.student_f_mail.text,
                              stdFNumber: controller.student_f_number.text,
                              stdMName: controller.student_m_name.text,
                              stdMOccu: controller.student_m_occu.text,
                              stdMMail: controller.student_m_mail.text,
                              stdMNumber: controller.student_m_number.text,
                              stdGName: controller.student_g_name.text,
                              stdGOccu: controller.student_g_occu.text,
                              stdGMail: controller.student_g_mail.text,
                              stdGNumber: controller.student_g_number.text,
                            ));
                            Fluttertoast.showToast(
                              msg: "Student updated successfully!",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.grey,
                              textColor: Colors.white,
                              fontSize: 16.0,
                            );
                          } catch (e) {
                            print('Error updating student: $e');
                          }
                          Get.toNamed(AppRoutes.dashboardScreen);
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add, size: 20),
                          Text(
                            "Update",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
