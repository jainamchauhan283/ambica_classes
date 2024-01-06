import 'package:ambica_classes/screens/home_screen.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/material.dart';
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
            SizedBox(height: 50),
            Text(
              "OTP Verification",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 50),
            Text(
              "Enter the code from the sms we sent to +917817878653",
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Text("02:32",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(height: 30),
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
                  )
                ),
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )
              ),
              onSubmitted: (value) {

              },
            ),
            SizedBox(height: 30),
            Text("I didn't receive any code. RESEND",
                style: TextStyle(
                  fontSize: 14,
                )),
            Expanded(child: SizedBox()),
            SizedBox(
              width: size.width * 0.9,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: tabColor),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    )),
                child: Text(
                  "Submit",
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
