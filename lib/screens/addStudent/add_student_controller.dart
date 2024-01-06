import 'package:ambica_classes/auth/database.dart';
import 'package:ambica_classes/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class AddStudentController extends GetxController {
  var stdName = TextEditingController();
  var stdBranch = TextEditingController();
  var stdSem = TextEditingController();
  var stdYear = TextEditingController();
  var stdMail = TextEditingController();
  var stdNumber = TextEditingController();
  var stdUni = TextEditingController();
  var stdAdd1 = TextEditingController();
  var stdAdd2 = TextEditingController();
  var stdAdd3 = TextEditingController();

  var stdCity = TextEditingController();
  var stdZip = TextEditingController();
  var stdState = TextEditingController();
  var stdCountry = TextEditingController();
  var stdCourse = TextEditingController();

  var stdFName = TextEditingController();
  var stdFOcu = TextEditingController();
  var stdFMail = TextEditingController();
  var stdFNumber = TextEditingController();

  var stdMName = TextEditingController();
  var stdMOcu = TextEditingController();
  var stdMMail = TextEditingController();
  var stdMNumber = TextEditingController();

  var stdGName = TextEditingController();
  var stdGOcu = TextEditingController();
  var stdGMail = TextEditingController();
  var stdGNumber = TextEditingController();

  uploadData() async {
    Map<String, dynamic> uploaddata = {
      "std_name": stdName.text,
      "std_branch": stdBranch.text,
      "std_sem": stdSem.text,
      "std_year": stdYear.text,
      "std_mail": stdMail.text,
      "std_number": stdNumber.text,
      "std_uni": stdUni.text,
      "std_add1": stdAdd1.text,
      "std_add2": stdAdd2.text,
      "std_add3": stdAdd3.text,
      "std_city": stdCity.text,
      "std_zip": stdZip.text,
      "std_state": stdState.text,
      "std_country": stdCountry.text,
      "std_course": stdCourse.text,
      // Father's
      "std_f_name": stdFName.text,
      "std_f_occupation": stdFOcu.text,
      "std_f_mail": stdFMail.text,
      "std_f_number": stdFNumber.text,
      // Mother's
      "std_m_name": stdMName.text,
      "std_m_occupation": stdMOcu.text,
      "std_m_mail": stdMMail.text,
      "std_m_number": stdMNumber.text,
      // Guardian's
      "std_g_name": stdGName.text,
      "std_g_occupation": stdGOcu.text,
      "std_g_mail": stdGMail.text,
      "std_g_number": stdGNumber.text,
    };
    await DatabaseMethods().addStudent(uploaddata);
    print(uploadData);
    clearData();

    Fluttertoast.showToast(
        msg: "Data Uploaded SuccessFully",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: grayColor,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  clearData() {
    stdName.clear();
    stdBranch.clear();
    stdSem.clear();
    stdYear.clear();
    stdMail.clear();
    stdNumber.clear();
    stdUni.clear();
    stdAdd1.clear();
    stdAdd2.clear();
    stdAdd3.clear();
    stdCity.clear();
    stdZip.clear();
    stdState.clear();
    stdCountry.clear();
    stdCourse.clear();

    stdFName.clear();
    stdFOcu.clear();
    stdFMail.clear();
    stdFNumber.clear();

    stdMName.clear();
    stdMOcu.clear();
    stdMMail.clear();
    stdMNumber.clear();

    stdGName.clear();
    stdGOcu.clear();
    stdGMail.clear();
    stdGNumber.clear();
  }
}
