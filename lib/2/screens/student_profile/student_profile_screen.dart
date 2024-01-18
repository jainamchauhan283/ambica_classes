import 'package:ambica_classes/2/model/student_model.dart';
import 'package:ambica_classes/2/routes.dart';
import 'package:ambica_classes/2/screens/student_profile/std_profile_controller.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class StudentProfile extends StatelessWidget {
  StudentProfile({super.key});

  final StudentModel student = Get.arguments;
  final StdProfileController controller = Get.put(StdProfileController());

  @override
  Widget build(BuildContext context) {
    print('Student Profile Data: $student');
    return Scaffold(
      backgroundColor: tabColor,
      appBar: AppBar(
        backgroundColor: tabColor,
        elevation: 0,
        title: Text("Student's Profile"),
        actions: [
          IconButton(
            onPressed: () async {
              bool confirmDeletion = await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text("Confirm Deletion"),
                    content:
                        Text("Are you sure you want to delete this student?"),
                    actions: [
                      TextButton(
                        onPressed: () => Get.back(result: false),
                        child: Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          Fluttertoast.showToast(
                            msg: "Student Delete successfully!",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                          Get.back(result: true);
                        },
                        child: Text("Delete"),
                      ),
                    ],
                  );
                },
              );

              if (confirmDeletion == true) {
                await controller.deleteStudent(student.stdId);
                Get.back();
              }
            },
            icon: Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
              print('send data : $student');
              Get.toNamed(AppRoutes.editStudent, arguments: student);
            },
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 12, top: 7, right: 30, bottom: 10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        // color: Colors.green,
                        child: Column(
                          children: [
                            const SizedBox(height: 5),
                            Center(
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/Ellipse 4.png',
                                  width: 75,
                                  height: 75,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context)
                                  .size
                                  .width *
                                  0.25,
                              margin: const EdgeInsets.only(left: 10, right: 10),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: student.stdType == 'inq'
                                    ? Colors.red
                                    : Colors.green,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  student.stdType == 'inq'
                                      ? 'Inquiry'
                                      : 'Admission',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(student.stdId),
                            Text(
                              student.stdName,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                const Text(
                                  'Branch :',
                                  style: TextStyle(
                                    color: grayColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Text(student.stdBranch,
                                    style: const TextStyle(
                                      color: tabColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                    maxLines: 1),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  'Sem :',
                                  style: TextStyle(
                                      color: grayColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                                const SizedBox(width: 5),
                                Text(student.stdSem,
                                    style: const TextStyle(
                                      color: tabColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                    maxLines: 1),
                                SizedBox(width: 5),
                                Text(
                                  'Year : ',
                                  style: TextStyle(
                                    color: grayColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  student.stdYear,
                                  style: TextStyle(
                                    color: tabColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Subject : ',
                              style: TextStyle(
                                  color: grayColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                student.stdCourse,
                                style: TextStyle(
                                  color: tabColor,
                                  fontSize: 17,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone_in_talk,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        student.stdNumber,
                        style: const TextStyle(
                          color: grayColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.mail_outline,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        student.stdMail,
                        style: const TextStyle(
                          color: tabColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      color: tabColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Divider(thickness: 2),
                  Text(
                    "Father' Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Name : ",
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 17,
                            ),
                          ),
                          TextSpan(
                            text: student.stdFName,
                            style: TextStyle(
                              color: tabColor,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Occupation : ",
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 17,
                            ),
                          ),
                          TextSpan(
                            text: student.stdFOccu,
                            style: TextStyle(
                              color: tabColor,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          student.stdFNumber,
                          style: TextStyle(
                            color: grayColor,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail_outline,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          student.stdFMail,
                          style: TextStyle(
                            color: tabColor,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(thickness: 2),
                  // mother's details
                  Text(
                    "Mother' Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Name : ",
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 17,
                            ),
                          ),
                          TextSpan(
                            text: student.stdMName,
                            style: TextStyle(
                              color: tabColor,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Occupation : ",
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 17,
                            ),
                          ),
                          TextSpan(
                            text: student.stdMOccu,
                            style: TextStyle(
                              color: tabColor,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          student.stdMNumber,
                          style: TextStyle(
                            color: grayColor,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail_outline,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          student.stdMMail,
                          style: TextStyle(
                            color: tabColor,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(thickness: 2),
                  // Guardian' details
                  Text(
                    "Guardian' Details",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Name : ",
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 17,
                            ),
                          ),
                          TextSpan(
                            text: student.stdGName,
                            style: TextStyle(
                              color: tabColor,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Occupation : ",
                            style: TextStyle(
                              color: grayColor,
                              fontSize: 17,
                            ),
                          ),
                          TextSpan(
                            text: student.stdGOccu,
                            style: TextStyle(
                              color: tabColor,
                              fontSize: 17,
                            ),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone_in_talk,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          student.stdGNumber,
                          style: TextStyle(
                            color: grayColor,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail_outline,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          student.stdGMail,
                          style: TextStyle(
                            color: tabColor,
                            fontSize: 17,
                          ),
                        )
                      ],
                    ),
                  ),
                  // address
                  Text(
                    "Student’s Address:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          student.stdAdd1,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: grayColor),
                        ),
                        SizedBox(height: 5),
                        Text(
                          student.stdAdd2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: grayColor),
                        ),
                        SizedBox(height: 5),
                        Text(
                          student.stdAdd3,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: grayColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
