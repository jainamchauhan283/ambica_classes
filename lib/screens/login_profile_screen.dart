import 'package:ambica_classes/screens/login_edit_profile_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginProfileScreen extends StatelessWidget {
  const LoginProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: tabColor,
      appBar: AppBar(
        title: Text("Profile", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginEditProfileScreen(),
              ),
            ),
            icon: Icon(Icons.edit),
          )
        ],
        backgroundColor: tabColor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/Ellipse 4.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Login User Name',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Icon(Icons.phone_in_talk),
                    SizedBox(width: 10),
                    Text(
                        "+917817878653",
                        style: TextStyle(
                          fontSize: 14,
                          color: grayColor,
                          fontWeight: FontWeight.w600,
                        )
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.mail_outline),
                    SizedBox(width: 10),
                    Text(
                        "mjbharmal@gmail.com",
                        style: TextStyle(
                          fontSize: 14,
                          color: tabColor,
                          fontWeight: FontWeight.w600,
                        )
                    )
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                   thickness: 2,
                ),
                SizedBox(height: 10),
                Text(
                    "Address:",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                    ),
                ),
                SizedBox(height: 7),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                      "Street line 1, Address Line -1, Address Line-2, City , zip code,State , Country",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: grayColor,
                      )
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
