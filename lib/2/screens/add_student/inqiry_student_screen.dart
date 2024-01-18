import 'dart:io';

import 'package:ambica_classes/2/screens/add_student/add_student_controller.dart';
import 'package:ambica_classes/2/widgets/image_picker.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class StdInquiryScreen extends StatelessWidget {
  StdInquiryScreen({Key? key}) : super(key: key);

  final AddStdController addStdController = Get.put(AddStdController());
  File? imagefile;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Form(
        key: addStdController.formKey,
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
                  InkWell(
                    onTap: () {
                      showPhotoOptions(context);
                    },
                    child: Obx(
                      () => CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            (addStdController.imagefile.value != null)
                                ? FileImage(addStdController.imagefile.value!)
                                : null,
                        child: (addStdController.imagefile.value == null)
                            ? const Icon(Icons.person)
                            : null,
                      ),
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
                decoration: InputDecoration(
                  hintText: "Student's Number*",
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
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 1",
                ),
                controller: addStdController.add1,
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
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Course',
                      ),
                      controller: addStdController.course,
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
                controller: addStdController.f_name,
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
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Number",
                ),
                controller: addStdController.f_number,
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
                controller: addStdController.m_name,
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
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Number",
                ),
                controller: addStdController.m_number,
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
                        if (addStdController.formKey.currentState?.validate() ?? false) {
                          addStdController.addStudent('inq');
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

  void showPhotoOptions(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Upload Profile Picture"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    imageSelect(ImageSource.gallery);
                  },
                  leading: Icon(Icons.photo_album),
                  title: Text("Select from gallery"),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
                    imageSelect(ImageSource.camera);
                  },
                  leading: Icon(Icons.camera_alt),
                  title: Text("Select from camera"),
                ),
              ],
            ),
          );
        });
  }

  void imageSelect(ImageSource source) async {
    XFile? pickedImage = await ImagePicker().pickImage(source: source);

    if (pickedImage != null) {
      File imageFile = File(pickedImage.path);
      addStdController.setImageFile(imageFile);
    }
  }
}
