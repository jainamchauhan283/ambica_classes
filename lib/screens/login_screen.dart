import 'package:ambica_classes/screens/otp_screen/otp_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: tabColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/Ellipse 6.png',
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Welcome to Ambica Classes ",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "We have send you an One Time Password(OTP) on this mobile number.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Enter mobile no.*",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: '+91',
                border: OutlineInputBorder(),
              ),
            ),
            Expanded(child: SizedBox()),
            SizedBox(
              width: size.width * 0.9,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: tabColor),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(),
                  ),
                ),
                child: Text(
                  "Get Code",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
