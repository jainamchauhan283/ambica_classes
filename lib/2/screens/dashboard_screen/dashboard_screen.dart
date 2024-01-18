import 'package:ambica_classes/2/model/student_model.dart';
import 'package:ambica_classes/2/routes.dart';
import 'package:ambica_classes/2/screens/dashboard_screen/dashboard_controller.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final DashboardController listStdController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tabColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: tabColor2,
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 20, top: 15),
                        child: Text(
                          'Respected Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 37,
                        margin: EdgeInsets.only(
                          top: size.height * 0.02,
                          left: size.height * 0.03,
                          bottom: size.height * 0.02,
                          right: size.height * 0.12,
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.white24,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 35,
                    left: MediaQuery.of(context).size.width * .85,
                    child: InkWell(
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: StreamBuilder<List<StudentModel>>(
                    stream: listStdController.studentStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else {
                        List<StudentModel> students = snapshot.data ?? [];
                        return Column(
                          children: [
                            Text(
                              'List Length : ${students.length}',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Expanded(
                                child: ListView.builder(
                              itemCount: students.length,
                              itemBuilder: (context, index) {
                                var student = students[index];
                                print(students[index].stdId);
                                return InkWell(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.studentProfile,
                                        arguments: student);
                                  },
                                  child: Card(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Container(
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
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
                                                const SizedBox(height: 7),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.25,
                                                  margin: const EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color:
                                                        student.stdType == 'inq'
                                                            ? Colors.red
                                                            : Colors.green,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      student.stdType == 'inq'
                                                          ? 'Inquiry'
                                                          : 'Admission',
                                                      // student.stdType,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(right: 0),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Card(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            top: 25, right: 10),
                                                        elevation: 10,
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(30),
                                                          ),
                                                        ),
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(Icons
                                                              .phone_in_talk),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Card(
                                                        margin: const EdgeInsets
                                                            .only(
                                                            right: 10,
                                                            bottom: 10,
                                                            top: 5),
                                                        elevation: 10,
                                                        shape:
                                                            const RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius.all(
                                                            Radius.circular(25),
                                                          ),
                                                        ),
                                                        child: IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(Icons
                                                              .message_outlined),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                      top: 7),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        student.stdName,
                                                        style: const TextStyle(
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            'Phone no :',
                                                            style: TextStyle(
                                                                color:
                                                                    grayColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 15),
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                            student.stdNumber,
                                                            style:
                                                                const TextStyle(
                                                              color: tabColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          const Text(
                                                            'Branch :',
                                                            style: TextStyle(
                                                                color:
                                                                    grayColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 15),
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                              student.stdBranch,
                                                              style: const TextStyle(
                                                                  color:
                                                                      tabColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 15),
                                                              maxLines: 1),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          const Text(
                                                            'Sem :',
                                                            style: TextStyle(
                                                                color:
                                                                    grayColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 16),
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(student.stdSem,
                                                              style: const TextStyle(
                                                                  color:
                                                                      tabColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 15),
                                                              maxLines: 1),
                                                          const SizedBox(
                                                              width: 5),
                                                          const Text('Year :',
                                                              style: TextStyle(
                                                                  color:
                                                                      grayColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      15)),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(student.stdYear,
                                                              style: const TextStyle(
                                                                  color:
                                                                      tabColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 15),
                                                              maxLines: 1),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        student.stdUni,
                                                        style: const TextStyle(
                                                          color: tabColor,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 15,
                                                        ),
                                                        maxLines: 1,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ))
                          ],
                        );
                      }
                    }),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoutes.addStudent);
        },
        child: Icon(Icons.add),
        backgroundColor: tabColor2,
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
