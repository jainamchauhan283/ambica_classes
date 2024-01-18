import 'package:ambica_classes/2/routes.dart';
import 'package:ambica_classes/2/widgets/custom_button.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
          children: [
            SizedBox(height: size.height * 0.08),
            Text(
              "OTP Verification",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "Enter the code from the sms we sent to +917817878653",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.06),
            Text("02:32",
                style: TextStyle(
                  fontSize: 16,
                  color: tabColor,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(height: size.height * 0.03),
            Pinput(
              length: 6,
              showCursor: true,
              defaultPinTheme: PinTheme(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: tabColor,
                      )),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
              onSubmitted: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "I didn't receive any code.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  TextSpan(
                    text: ' RESEND',
                    style: TextStyle(
                        color: tabColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            // Text("I didn't receive any code. RESEND",
            //     style: TextStyle(
            //       fontSize: 14,
            //     )),
            Expanded(child: SizedBox()),
            CustomButton(
              name: 'Submit',
              onPressed: () {
                Get.toNamed(AppRoutes.dashboardScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
