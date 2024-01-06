import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';

class StudentProfileScreen extends StatelessWidget {
  final Map<String, dynamic> data;

  const StudentProfileScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tabColor,
      appBar: AppBar(
        backgroundColor: tabColor,
        elevation: 0,
        title: Text("Student's Profile"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.edit),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 7, right: 50, bottom: 10),
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
                              margin:
                                  const EdgeInsets.only(left: 10, right: 10),
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.green),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Addmision"),
                              )),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['std_name'],
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
                              Text(data['std_branch'],
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
                              Text(data['std_sem'],
                                  style: const TextStyle(
                                    color: tabColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                  maxLines: 1),
                              SizedBox(width: 5),
                              Text(
                                'Year:',
                                style: TextStyle(
                                  color: grayColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                data['std_year'],
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
                            'Subject :',
                            style: TextStyle(
                                color: grayColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              data['std_course'],
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
                      data['std_number'],
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
                      data['std_mail'],
                      style: const TextStyle(
                        color: tabColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Text(
                  data['std_uni'],
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
                          text: data['std_f_name'],
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
                          text: data['std_f_occupation'],
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
                        data['std_f_number'],
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
                        data['std_f_mail'],
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
                          text: data['std_m_name'],
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
                          text: data['std_m_occupation'],
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
                        data['std_m_number'],
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
                        data['std_m_mail'],
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
                          text: data['std_g_name'],
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
                          text: data['std_g_occupation'],
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
                        data['std_g_number'],
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
                        data['std_g_mail'],
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
                        data['std_add1'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: grayColor),
                      ),
                      SizedBox(height: 5),
                      Text( data['std_add2'],
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: grayColor),
                      ),
                      SizedBox(height: 5),
                      Text(data['std_add3'],
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
    );
  }
}
