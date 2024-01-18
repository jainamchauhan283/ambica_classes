import 'package:ambica_classes/2/org/screens/second_screen.dart';
import 'package:ambica_classes/2/services/firebase_operations.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class OrgLoginController extends GetxController {
  var orgCodeText = TextEditingController();

  void checkOrgCode(BuildContext context) async {
    String orgCode = orgCodeText.text;
    bool orgCodeExists = await FireOperations.checkCode(orgCode);

    if (orgCodeExists) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(
            orgCode: orgCode,
          ),
        ),
      );
    } else {
      Fluttertoast.showToast(
        msg: "Organization code does not exist",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
