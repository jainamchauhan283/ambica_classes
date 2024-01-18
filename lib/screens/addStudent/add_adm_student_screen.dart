import 'dart:io';

import 'package:ambica_classes/screens/addStudent/add_student_controller.dart';
import 'package:ambica_classes/screens/login_profile_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:ambica_classes/widgets/image_pick.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddAdmStudentScreen extends StatelessWidget {
  AddAdmStudentScreen({super.key});

  final ImagePickController controller = Get.put(ImagePickController());
  AddStudentController addStudentController = Get.put(AddStudentController());
  String imageUrl = '';
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: Obx(() {
                        return controller.pickedImagePath.isNotEmpty
                            ? CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(File(controller.pickedImagePath)),
                        )
                            : CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(Icons.camera_alt),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Choose an option"),
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ListTile(
                                          leading: Icon(Icons.camera),
                                          title: Text("Take a picture"),
                                          onTap: () {
                                            controller.pickImage(ImageSource.camera);
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        ListTile(
                                          leading: Icon(Icons.photo_library),
                                          title: Text("Choose from gallery"),
                                          onTap: () {
                                            controller.pickImage(ImageSource.gallery);
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        );
                      }),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text("Choose an option"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.camera),
                                    title: Text("Take a picture"),
                                    onTap: () {
                                      controller.pickImage(ImageSource.camera);
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.photo_library),
                                    title: Text("Choose from gallery"),
                                    onTap: () {
                                      controller.pickImage(ImageSource.gallery);
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: addStudentController.stdName,
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
                              controller: addStudentController.stdBranch,
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
                                    controller: addStudentController.stdSem,
                                    decoration: InputDecoration(
                                      hintText: 'Semester',
                                    ),
                                    keyboardType: TextInputType.number,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter the semester';
                                      }
                                      // You can add more specific validation logic here if needed
                                      return null;
                                    },
                                  ),
                                ),
                                SizedBox(width: 20),
                                Expanded(
                                  child: TextFormField(
                                    controller: addStudentController.stdYear,
                                    decoration: InputDecoration(
                                      hintText: 'Year',
                                    ),
                                    keyboardType: TextInputType.number,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter the year';
                                      }
                                      // You can add more specific validation logic here if needed
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
                  controller: addStudentController.stdMail,
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
                  controller: addStudentController.stdNumber,
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
                  controller: addStudentController.stdUni,
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
                TextFormField(
                  controller: addStudentController.stdAdd1,
                  decoration: InputDecoration(
                    hintText: "Student’s Address Line 1",
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
                  controller: addStudentController.stdAdd2,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student’s Address Line 3",
                  ),
                  controller: addStudentController.stdAdd3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Student's City",
                        ),
                        controller: addStudentController.stdCity,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Zip Code',
                        ),
                        controller: addStudentController.stdZip,
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
                        controller: addStudentController.stdState,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Country',
                        ),
                        controller: addStudentController.stdCountry,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: addStudentController.stdCourse,
                        decoration: InputDecoration(
                          hintText: "Course",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Course';
                          }
                          return null;
                        },
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
                  controller: addStudentController.stdFName,
                  decoration: InputDecoration(
                    hintText: "Student's Father Name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Student's Father Name";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: addStudentController.stdFOcu,
                  decoration: InputDecoration(
                    hintText: "Student's Father Occupation",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Student's Father Occupation";
                    }
                    return null;
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student's Father Email",
                  ),
                  controller: addStudentController.stdFMail,
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student's Father Number",
                  ),
                  controller: addStudentController.stdFNumber,
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
                  controller: addStudentController.stdMName,
                  decoration: InputDecoration(
                    hintText: "Student's Mother Name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Student's Mother Name";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: addStudentController.stdMOcu,
                  decoration: InputDecoration(
                    hintText: "Student's Mother Occupatio",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Student's Mother Occupatio";
                    }
                    return null;
                  },
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student's Mother Email",
                  ),
                  controller: addStudentController.stdMMail,
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student's Mother Number",
                  ),
                  controller: addStudentController.stdMNumber,
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
                  controller: addStudentController.stdGName,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student's Guardian Occupation",
                  ),
                  controller: addStudentController.stdGOcu,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student's Guardian Email",
                  ),
                  controller: addStudentController.stdGMail,
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Student's Guardian Number",
                  ),
                  controller: addStudentController.stdGNumber,
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // cancle button
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
                        onPressed: () => Navigator.pop(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginProfileScreen(),
                          ),
                        ),
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
                          if (formKey.currentState!.validate()) {
                            controller.convertToBase64();
                            addStudentController.uploadData('adm');
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
      ),
    );
  }
}
