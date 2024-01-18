import 'package:ambica_classes/2/routes.dart';
import 'package:ambica_classes/2/screens/login_screen/login_screen_controller.dart';
import 'package:ambica_classes/2/widgets/custom_button.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  LoginController loginController = LoginController();

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
        child: SingleChildScrollView(
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
                controller: loginController.mobileController,
                decoration: InputDecoration(
                  hintText: '+91',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              CustomButton(
                name: 'Get Code',
                onPressed: () {
                  Get.toNamed(AppRoutes.otpScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
