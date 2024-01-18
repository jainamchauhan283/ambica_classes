import 'package:ambica_classes/2/org/screens/org_login_screen/org_login_screen_controller.dart';
import 'package:ambica_classes/2/services/firebase_operations.dart';
import 'package:ambica_classes/2/widgets/custom_button.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';

class OrgLoginScreen extends StatelessWidget {
  OrgLoginScreen({super.key});

  OrgLoginController orgController = OrgLoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Org Login", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: tabColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Welcome to Organization",
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
              SizedBox(height: 10),
              TextField(
                controller: orgController.orgCodeText,
                decoration: InputDecoration(
                  hintText: 'org code',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              CustomButton(
                name: 'Get Code',
                onPressed: () {
                  orgController.checkOrgCode(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
