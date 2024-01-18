import 'package:ambica_classes/2/org/screens/third_screen.dart';
import 'package:ambica_classes/2/services/firebase_operations.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class SecondController extends GetxController {
  var number = TextEditingController();

  void findMobileNumber(BuildContext context, String orgCode) async {
    String mobileNumber = number.text;
    bool mobileNumberExists =
        await FireOperations.checkNumber(orgCode, mobileNumber);
    print('org code : ${orgCode.toString()}');
    if (mobileNumberExists) {
      Get.to(() => WelcomeScreen());
    } else {
      Fluttertoast.showToast(
        msg: "Mobile number does not exist in the user's collection",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
