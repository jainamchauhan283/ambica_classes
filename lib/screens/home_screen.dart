import 'package:ambica_classes/screens/addStudent/add_student_tab.dart';
import 'package:ambica_classes/screens/login_profile_screen.dart';
import 'package:ambica_classes/screens/student_profile/student_profile_screen.dart';
// import 'package:ambica_classes/screens/student_profile/student_profile_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // final TabBarController tabBarController = Get.put(TabBarController());

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
                    top: 30,
                    left: MediaQuery
                        .of(context)
                        .size
                        .width * .85,
                    child: InkWell(
                      child: Container(
                        width: 45,
                        height: 45,
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
                      onTap: () =>
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginProfileScreen(),
                            ),
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 10),
                child: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  stream: FirebaseFirestore.instance
                      .collection('student')
                      .snapshots(),
                  builder: (_, snapshot) {
                    if (snapshot.hasError)
                      return Text('Error = ${snapshot.error}');
                    if (snapshot.hasData) {
                      final docs = snapshot.data!.docs;
                      return Column(
                        children: [
                          Text(
                            'List Length: ${docs.length}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 7),
                          Expanded(
                            child: ListView.builder(
                              shrinkWrap: true,
                              reverse: false,
                              itemCount: docs.length,
                              itemBuilder: (_, i) {
                                final data = docs[i].data();
                                print(data);
                                return InkWell(
                                  child: Card(
                                    margin: const EdgeInsets.only(
                                        left: 10, right: 10, bottom: 10),
                                    elevation: 2,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    color: Colors.white,
                                    child: Row(
                                      children: [
                                        Container(
                                          // color: Colors.green,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
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
                                                    width: MediaQuery.of(context).size.width * 0.25,
                                                  margin: const EdgeInsets.only(
                                                      left: 10,
                                                      right: 10,
                                                      bottom: 10),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                    color: data['type'] == 'inq'
                                                        ? Colors.red
                                                        : Colors.green,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        8.0),
                                                    child: Text(
                                                      textAlign: TextAlign.center,
                                                      data['type'] == 'inq'
                                                          ? 'Inquiry'
                                                          : 'Admission',
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
                                                        elevation: 11,
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
                                                        elevation: 11,
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
                                                        data['std_name'],
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
                                                            'Phone no:',
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
                                                            data['std_number'],
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
                                                              data[
                                                              'std_branch'],
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
                                                          Text(data['std_sem'],
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
                                                          const Text('Year:',
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
                                                          Text(data['std_year'],
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
                                                        data['std_uni'],
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
                                    // child: ListTile(
                                    //   title: Text(data['std_name']),
                                    //   subtitle: Text(data['std_branch']),
                                    // ),
                                  ),
                                  onTap: () {
                                    print(data);
                                    Get.to(() => StudentProfileScreen(data: data));
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      );
                    }
                    return Center(child: CircularProgressIndicator());
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTabScreen(),
              ),
            ),
        child: Icon(Icons.add),
        backgroundColor: tabColor2,
        shape: CircleBorder(
          side: BorderSide(
            color: Colors.white,
            width: 2.0,
          ), // Border settings
        ),
      ),
    );
  }
}
