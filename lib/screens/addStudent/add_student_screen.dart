import 'package:ambica_classes/screens/addStudent/add_student_controller.dart';
import 'package:ambica_classes/screens/login_profile_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStudentScreen extends StatelessWidget {
  AddStudentScreen({super.key});

  AddStudentController addStudentController = Get.put(AddStudentController());
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tabColor,
      appBar: AppBar(
        backgroundColor: tabColor,
        title: Text('Add Student'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
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
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade300,
                      radius: 45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt,
                            color: Colors.black45,
                          ),
                          Text(
                            'Student Photo',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextField(
                            controller: addStudentController.stdName,
                            decoration: InputDecoration(
                              hintText: "Student's Name",
                            ),
                          ),
                          TextField(
                            controller: addStudentController.stdBranch,
                            decoration: InputDecoration(
                              hintText: "Student's Branch",
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: addStudentController.stdSem,
                                  decoration: InputDecoration(
                                    hintText: 'Semester',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                child: TextField(
                                  controller: addStudentController.stdYear,
                                  decoration: InputDecoration(
                                    hintText: 'Year',
                                  ),
                                  keyboardType: TextInputType.number,
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
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Email",
                ),
                keyboardType: TextInputType.emailAddress,
                controller: addStudentController.stdMail,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Number",
                ),
                controller: addStudentController.stdNumber,
                keyboardType: TextInputType.phone,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "University/Institute",
                ),
                controller: addStudentController.stdUni,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student’s Address Line 1",
                ),
                controller: addStudentController.stdAdd1,
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
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Course',
                      ),
                      controller: addStudentController.stdCourse,
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
                controller: addStudentController.stdFName,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Father Occupation",
                ),
                controller: addStudentController.stdFOcu,
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
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Name",
                ),
                controller: addStudentController.stdMName,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Student's Mother Occupation",
                ),
                controller: addStudentController.stdMOcu,
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
                  SizedBox(
                    width: size.width * 0.35,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: redColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Adjust the border radius as needed
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
                          Text("Cancel",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.35,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: tabColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20), // Adjust the border radius as needed
                        ),
                      ),
                      onPressed: () {
                        addStudentController.uploadData();
                        Get.back();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add, size: 20),
                          Text("Save",
                              style: TextStyle(
                                fontSize: 20,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
