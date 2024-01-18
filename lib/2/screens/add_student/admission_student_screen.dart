import 'package:ambica_classes/2/screens/add_student/add_student_controller.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class StdAdmissionScreen extends StatelessWidget {
  StdAdmissionScreen({Key? key}) : super(key: key);

  final AddStdController addStdController = Get.put(AddStdController());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                            controller: addStdController.name,
                            decoration: InputDecoration(
                              hintText: "Student's Name*",
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter the student\'s name';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: addStdController.branch,
                            decoration: InputDecoration(
                              hintText: "Student's Branch*",
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
                                  controller: addStdController.sem,
                                  decoration: InputDecoration(
                                    hintText: 'Semester*',
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
                                  controller: addStdController.year,
                                  decoration: InputDecoration(
                                    hintText: 'Year*',
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
                controller: addStdController.mail,
                decoration: InputDecoration(
                  hintText: "Student's Email*",
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
                controller: addStdController.number,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Student's Number*",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the student\'s number';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: addStdController.uni,
                decoration: InputDecoration(
                  hintText: "University/Institute*",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter University/Institute Name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: addStdController.add1,
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 1*",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Student’s Address Line 1';
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 2",
                ),
                controller: addStdController.add2,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 3",
                ),
                controller: addStdController.add3,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Student's City",
                      ),
                      controller: addStdController.city,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Zip Code',
                      ),
                      controller: addStdController.zip,
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
                      controller: addStdController.state,
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Country',
                      ),
                      controller: addStdController.country,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: addStdController.course,
                      decoration: InputDecoration(
                        hintText: "Course",
                      ),
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
              TextFormField(
                controller: addStdController.f_name,
                decoration: InputDecoration(
                  hintText: "Student's Father Name*",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Student's Father Name";
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Occupation",
                ),
                controller: addStdController.f_occu,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Email",
                ),
                controller: addStdController.f_mail,
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                controller: addStdController.f_number,
                decoration: InputDecoration(
                  hintText: "Student's Father Number*",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Student's Father Number";
                  }
                  return null;
                },
                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 10),
              Divider(thickness: 2),
              SizedBox(height: 10),
              Text(
                "Mother's Details :",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: addStdController.m_name,
                decoration: InputDecoration(
                  hintText: "Student's Mother Name*",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Student's Mother Name";
                  }
                  return null;
                },
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Occupation",
                ),
                controller: addStdController.m_occu,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Email",
                ),
                controller: addStdController.m_mail,
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                controller: addStdController.m_number,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Student's Mother Number*",
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter Student's Mother Number";
                  }
                  return null;
                },
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
                controller: addStdController.g_name,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Guardian Occupation",
                ),
                controller: addStdController.g_occu,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Guardian Email",
                ),
                controller: addStdController.g_mail,
                keyboardType: TextInputType.emailAddress,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Guardian Number",
                ),
                controller: addStdController.g_number,
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
                      onPressed: () {},
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
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          addStdController.addStudent('adm');
                          addStdController.clearData();
                          Fluttertoast.showToast(
                            msg: "Student inserted successfully!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          Get.back();
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add, size: 20),
                          Text(
                            "Save",
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
